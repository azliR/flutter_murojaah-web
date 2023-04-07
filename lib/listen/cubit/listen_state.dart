part of 'listen_cubit.dart';

@freezed
class ListenState with _$ListenState {
  factory ListenState({
    required bool isPlaying,
    required bool isLoading,
    required bool hasListened,
    required String errorMessage,
    required Surah surah,
    required Ayah ayah,
    ListenResponse? response,
    Dataset? dataset,
  }) = _ListenState;

  factory ListenState.initial() => ListenState(
        isPlaying: false,
        isLoading: false,
        hasListened: false,
        errorMessage: '',
        surah: Surah.initial(),
        ayah: Ayah.initial(),
      );
}
