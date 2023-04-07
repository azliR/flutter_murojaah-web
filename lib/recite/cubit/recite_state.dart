part of 'recite_cubit.dart';

@freezed
class ReciteState with _$ReciteState {
  const factory ReciteState({
    required List<Recording> recordings,
    required bool isRecording,
    required String errorMessage,
    required Surah surah,
    required Ayah ayah,
    int? playingRecordingIndex,
  }) = _ReciteState;

  const ReciteState._();

  factory ReciteState.initial() => ReciteState(
        recordings: [],
        isRecording: false,
        surah: Surah.initial(),
        ayah: Ayah.initial(),
        errorMessage: '',
      );
}
