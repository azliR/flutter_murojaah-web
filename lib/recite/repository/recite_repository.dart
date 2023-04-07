import 'dart:developer';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cross_file/cross_file.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:murojaah_web/recite/model/dataset.dart';
import 'package:murojaah_web/recite/model/recording.dart';
import 'package:record/record.dart';
import 'package:uuid/uuid.dart';

@lazySingleton
class ReciteRepository {
  ReciteRepository(this._firebaseStorage, this._record, this._audioPlayer);

  final Record _record;
  final AudioPlayer _audioPlayer;
  final FirebaseStorage _firebaseStorage;

  Future<void> startRecording() async {
    if (await _record.hasPermission()) {
      await _record.start(
        encoder: AudioEncoder.wav,
      );
    }
  }

  Future<Uint8List> stopRecording() async {
    final audioPath = await _record.stop();
    return XFile(audioPath ?? '').readAsBytes();
  }

  Stream<PlayerState> get playerStateStream => _audioPlayer.playerStateStream;

  Future<void> playAudio({
    required Recording recording,
  }) async {
    final audioBytes = recording.audio;
    final audioFile = XFile.fromData(audioBytes);
    await _audioPlayer.setUrl(audioFile.path);
    await _audioPlayer.play();
  }

  Future<void> stopAudio() async {
    await _audioPlayer.stop();
  }

  Future<String?> saveDataset({
    required Recording recording,
    void Function(String error)? onError,
  }) async {
    late final Reference datasetsStorageRef;

    try {
      final metadata = SettableMetadata(contentType: 'audio/wav');
      final fileName = const Uuid().v4();

      datasetsStorageRef =
          _firebaseStorage.ref().child('datasets/$fileName.wav');
      final uploadRef =
          await datasetsStorageRef.putData(recording.audio, metadata);
      final url = await uploadRef.ref.getDownloadURL();

      final dataset = Dataset(
        surahNumber: recording.surah.id,
        ayahNumber: recording.ayah.ayahNumber,
        url: url,
        age: -1,
        country: null,
        gender: null,
        qiraah: null,
        recitationMode: RecitationMode.none,
        submittedAt: Timestamp.now().toDate(),
        hasEvaluated: false,
        label: null,
      );

      final docRef = await datasetsRef.add(dataset);
      return docRef.id;
    } on FirebaseException catch (e, stackTrace) {
      if (e.plugin == 'cloud_firestore') {
        log(e.toString(), stackTrace: stackTrace);
        await datasetsStorageRef
            .delete()
            .catchError((Object e) => onError?.call(e.toString()));
      }
      log(e.toString(), stackTrace: stackTrace);
      onError?.call(e.toString());
    } catch (e, stackTrace) {
      log(e.toString(), stackTrace: stackTrace);
      onError?.call(e.toString());
    }
    return null;
  }
}
