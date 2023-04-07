import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:murojaah_web/app/core/app_router.dart';
import 'package:murojaah_web/auth/cubit/auth_cubit.dart';
import 'package:murojaah_web/injection.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();

    return SignInScreen(
      auth: getIt<FirebaseAuth>(),
      showAuthActionSwitch: false,
      providers: [
        EmailAuthProvider(),
      ],
      actions: [
        AuthStateChangeAction<SigningIn>((context, state) {
          EasyLoading.show(status: 'Mencoba masuk');
        }),
        AuthStateChangeAction<AuthFailed>((context, state) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.exception.toString()),
            ),
          );
          EasyLoading.dismiss();
        }),
        AuthStateChangeAction<SignedIn>((context, state) {
          cubit.changeUser(state.user!);
          EasyLoading.dismiss();
          context.router.pushAndPopUntil(
            const HomeWrapperRoute(),
            predicate: (_) => false,
          );
        })
      ],
    );
  }
}
