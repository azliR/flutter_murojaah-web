import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:murojaah_web/app/constant/surah_list.dart';
import 'package:murojaah_web/app/model/ayah.dart';
import 'package:murojaah_web/app/model/surah.dart';
import 'package:murojaah_web/recite/model/recording.dart';
import 'package:murojaah_web/recite/repository/recite_repository.dart';
import 'package:siri_wave/siri_wave.dart';

part 'recite_cubit.freezed.dart';
part 'recite_state.dart';

@injectable
class ReciteCubit extends Cubit<ReciteState> {
  ReciteCubit(this._reciteRepository) : super(ReciteState.initial());

  final ReciteRepository _reciteRepository;

  // final _random = Random();
  final waveController = SiriWaveController(speed: 0.1, frequency: 20);

  StreamSubscription<PlayerState>? _playingStreamSubscription;

  void changeAyah({
    required Surah surah,
    required Ayah ayah,
  }) {
    emit(
      state.copyWith(
        surah: surah,
        ayah: ayah,
      ),
    );
  }

  Future<void> startRecording() async {
    await _reciteRepository.startRecording();
    emit(state.copyWith(isRecording: true, errorMessage: ''));
  }

  Future<void> stopRecording() async {
    emit(state.copyWith(isRecording: false));

    final audioBytes = await _reciteRepository.stopRecording();

    if (audioBytes.length < 10 * 1024) {
      emit(state.copyWith(errorMessage: 'Rekaman terlalu pendek'));
      return;
    } else if (audioBytes.length > 2 * 1024 * 1024) {
      emit(state.copyWith(errorMessage: 'Ukuran file rekaman terlalu besar'));
      return;
    }
    final recording = Recording(
      surah: state.surah,
      ayah: state.ayah,
      audio: audioBytes,
    );

    final existingRecording = state.recordings.indexWhere(
      (recording) =>
          recording.ayah == state.ayah && recording.surah == state.surah,
    );

    if (existingRecording == -1) {
      emit(state.copyWith(recordings: [...state.recordings, recording]));
    } else {
      final recordings = [...state.recordings];
      emit(
        state.copyWith(
          recordings: recordings..[existingRecording] = recording,
        ),
      );
    }
    await nextAyah();
  }

  Future<void> playAudio({
    required int index,
  }) async {
    emit(state.copyWith(playingRecordingIndex: index));
    _playingStreamSubscription ??=
        _reciteRepository.playerStateStream.listen((state) async {
      if (state.processingState == ProcessingState.completed) {
        await stopAudio();
      }
    });
    final recording = state.recordings[index];
    await _reciteRepository.playAudio(recording: recording);
  }

  Future<void> stopAudio() async {
    await _reciteRepository.stopAudio();
    emit(state.copyWith(playingRecordingIndex: null));
  }

  Future<void> saveDataset({
    required void Function() onSuccess,
    required void Function() onError,
  }) async {
    emit(state.copyWith(errorMessage: ''));

    for (final recording in state.recordings) {
      final id = await _reciteRepository.saveDataset(
        recording: recording,
        onError: (error) {
          emit(
            state.copyWith(
              errorMessage: error,
            ),
          );
        },
      );

      if (id == null) {
        // emit(
        //   state.copyWith(
        //     errorMessage: 'Terjadi kesalahan ketika mengirim rekaman',
        //   ),
        // );
        onError();
        return;
      }
    }
    onSuccess();
    emit(state.copyWith(recordings: []));
  }

  void reRecord(int index) {
    final recording = state.recordings[index];
    final surah = recording.surah;
    final ayah = recording.ayah;

    emit(state.copyWith(surah: surah, ayah: ayah));
  }

  void deleteRecording(int index) {
    final recordings = [...state.recordings]..removeAt(index);

    emit(state.copyWith(recordings: recordings));
  }

  // TODO: remove this when release with more surahs
  void randomiseAyah() {
    // final surah = surahs[_random.nextInt(surahs.length - 78) + 78];
    final surah = surahs[0];
    // final ayah = surah.ayahs[_random.nextInt(surah.ayahs.length)];
    final ayah = surah.ayahs[0];

    emit(
      state.copyWith(
        surah: surah,
        ayah: ayah,
      ),
    );
  }

  Future<void> nextAyah() async {
    if (state.isRecording) {
      await stopRecording();
      await startRecording();
      return;
    }

    final Surah surah;
    final Ayah ayah;

    final existingRecording = state.recordings.indexWhere(
      (recording) =>
          recording.ayah == state.ayah && recording.surah == state.surah,
    );

    if (existingRecording != -1) {
      final lastRecording = state.recordings.last;
      surah = lastRecording.surah;
      ayah = lastRecording.ayah;
    } else {
      surah = state.surah;
      ayah = state.ayah;
    }

    final Surah nextSurah;
    final Ayah nextAyah;

    if (ayah.ayahNumber == surah.countAyah) {
      if (surah.id == 1) {
        nextSurah = surahs[0];
        nextAyah = nextSurah.ayahs.first;
      } else {
        // bukan surah.id + 1 karena index array mulai dari 0
        nextSurah = surahs[surah.id];
        nextAyah = nextSurah.ayahs.first;
      }
    } else {
      // bukan ayah.ayahNumber + 1 karena index array mulai dari 0
      nextSurah = surah;
      nextAyah = nextSurah.ayahs[ayah.ayahNumber];
    }

    emit(
      state.copyWith(
        surah: nextSurah,
        ayah: nextAyah,
      ),
    );
  }

  void changeAmplitude({
    required bool isRecording,
  }) {
    const duration = Duration(seconds: 1);
    const ticksPerInterval = 20;
    const step = 1 / (ticksPerInterval - 1);

    Timer.periodic(duration ~/ ticksPerInterval, (timer) {
      final amplitude = timer.tick * step;
      waveController.setAmplitude(
        isRecording ? amplitude : 1 - amplitude,
      );

      if (timer.tick >= ticksPerInterval) {
        timer.cancel();
      }
    });
  }

  @override
  Future<void> close() async {
    await _playingStreamSubscription?.cancel();
    await super.close();
  }
}
