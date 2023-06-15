import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:murojaah_web/listen/model/listen.dart';
import 'package:murojaah_web/recite/model/dataset.dart';

@lazySingleton
class ListenRepository {
  ListenRepository(this._audioPlayer);

  final AudioPlayer _audioPlayer;

  Stream<PlayerState> get playerStateStream => _audioPlayer.playerStateStream;

  Future<void> startListening(String url) async {
    await _audioPlayer.setUrl(url);
    await _audioPlayer.play();
  }

  Future<void> stopListening() async {
    await _audioPlayer.stop();
  }

  Future<void> getRandomDataset({
    required void Function(Dataset? dataset) onSuccess,
    void Function(String error)? onError,
  }) async {
    try {
      final query = datasetsRef.whereHasEvaluated(isEqualTo: false).limit(1);
      final snapshot = await query.get();
      final docs = snapshot.docs;
      if (docs.isNotEmpty) {
        onSuccess(docs.first.data);
      } else {
        onSuccess(null);
      }
    } on FirebaseException catch (e, stackTrace) {
      log(e.toString(), stackTrace: stackTrace);
      onError?.call(e.toString());
    } catch (e, stackTrace) {
      log(e.toString(), stackTrace: stackTrace);
      onError?.call(e.toString());
    }
  }

  Future<bool> sendResponse(ListenResponse response) async {
    try {
      await datasetsRef.doc(response.dataset.id).update(
            hasEvaluated: true,
            label: response.isLiked,
            gender: response.gender?.value,
          );

      return true;
    } on FirebaseException catch (e, stackTrace) {
      log(e.toString(), stackTrace: stackTrace);
    } catch (e, stackTrace) {
      log(e.toString(), stackTrace: stackTrace);
    }
    return false;
  }
}
