import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';
import 'package:murojaah_web/app/constant/surah_list.dart';
import 'package:murojaah_web/app/model/ayah.dart';
import 'package:murojaah_web/app/model/surah.dart';
import 'package:murojaah_web/listen/model/listen.dart';
import 'package:murojaah_web/listen/repository/listen_repository.dart';
import 'package:murojaah_web/recite/model/dataset.dart';
import 'package:siri_wave/siri_wave.dart';

part 'listen_cubit.freezed.dart';
part 'listen_state.dart';

@injectable
class ListenCubit extends Cubit<ListenState> {
  ListenCubit(this._listenRepository) : super(ListenState.initial());

  final ListenRepository _listenRepository;
  final waveController = SiriWaveController(speed: 0.1, frequency: 20);

  StreamSubscription<PlayerState>? _playStateSubscription;

  void changeResponse({required bool isLiked, Gender? gender}) {
    final response = ListenResponse(
      dataset: state.dataset!,
      surah: state.surah,
      ayah: state.ayah,
      isLiked: isLiked,
      gender: gender,
    );
    emit(state.copyWith(response: response));
  }

  Future<void> startListening() async {
    _playStateSubscription ??=
        _listenRepository.playerStateStream.listen((event) async {
      if (event.processingState == ProcessingState.completed) {
        await _listenRepository.stopListening();
        emit(state.copyWith(hasListened: true));
      } else {
        emit(state.copyWith(isPlaying: event.playing));
      }
    });

    await _listenRepository.startListening(state.dataset!.url);
  }

  Future<void> stopListening() async {
    await _listenRepository.stopListening();
  }

  Future<void> getRandomDataset() async {
    emit(state.copyWith(errorMessage: '', isLoading: true));

    await _listenRepository.getRandomDataset(
      onSuccess: (dataset) {
        if (dataset == null) {
          emit(
            state.copyWith(
              errorMessage: 'Semua data sampel sudah direview! 🎉',
              isLoading: false,
            ),
          );
        } else {
          final surah = surahs[dataset.surahNumber - 1];
          final ayah = surah.ayahs[dataset.ayahNumber - 1];
          emit(
            state.copyWith(
              dataset: dataset,
              surah: surah,
              ayah: ayah,
              isLoading: false,
            ),
          );
        }
      },
      onError: (error) {
        emit(
          state.copyWith(
            errorMessage: 'Terjadi kesalahan saat memuat data.',
            isLoading: false,
          ),
        );
      },
    );
  }

  Future<void> sendResponse({
    required void Function() onSuccess,
    required void Function() onError,
  }) async {
    if (state.response == null) return;
    emit(state.copyWith(errorMessage: '', isLoading: true));

    final success = await _listenRepository.sendResponse(state.response!);
    if (success) {
      emit(
        state.copyWith(
          response: null,
          hasListened: false,
          dataset: null,
          isLoading: false,
        ),
      );
      onSuccess();
    } else {
      emit(
        state.copyWith(
          errorMessage: 'Terjadi kesalahan saat mengirim respon.',
          isLoading: false,
        ),
      );
      onError();
    }
  }

  void changeAmplitude({
    required bool isPlaying,
  }) {
    const duration = Duration(seconds: 1);
    const ticksPerInterval = 20;
    const step = 1 / (ticksPerInterval - 1);

    Timer.periodic(duration ~/ ticksPerInterval, (timer) {
      final amplitude = timer.tick * step;
      waveController.setAmplitude(
        isPlaying ? amplitude : 1 - amplitude,
      );

      if (timer.tick >= ticksPerInterval) {
        timer.cancel();
      }
    });
  }

  @override
  Future<void> close() {
    _playStateSubscription?.cancel();
    return super.close();
  }
}
