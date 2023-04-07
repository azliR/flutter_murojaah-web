part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required bool isLoading,
    required String errorMessage,
    User? user,
  }) = _AuthState;

  factory AuthState.initial() => AuthState(
        isLoading: false,
        errorMessage: '',
      );
}
