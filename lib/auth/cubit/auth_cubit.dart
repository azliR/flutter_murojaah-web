import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:murojaah_web/auth/repository/auth_repository.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authRepository) : super(AuthState.initial());

  final AuthRepository _authRepository;

  Future<void> init() async {
    final user = _authRepository.user;

    if (user != null) {
      changeUser(user);
    } else {
      await signInAnonymously();
    }
  }

  void changeUser(User user) {
    emit(state.copyWith(user: user));
  }

  void signInError(String errorMessage) {
    emit(state.copyWith(errorMessage: errorMessage));
  }

  Future<void> signInAnonymously() async {
    if (state.user != null) return;

    emit(state.copyWith(isLoading: true));

    final user = await _authRepository.signInAnonymously();
    if (user != null) {
      emit(
        state.copyWith(
          user: user,
          isLoading: false,
        ),
      );
    } else {
      emit(
        state.copyWith(
          errorMessage: 'Terjadi kesalahan saat login',
          isLoading: false,
        ),
      );
    }
  }
}
