import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthRepository {
  AuthRepository(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  User? get user => _firebaseAuth.currentUser;

  Future<User?> signInAnonymously() async {
    try {
      final credentials = await _firebaseAuth.signInAnonymously();
      return credentials.user!;
    } on FirebaseAuthException catch (e, stackTrace) {
      log(e.toString(), stackTrace: stackTrace);
    } catch (e, stackTrace) {
      log(e.toString(), stackTrace: stackTrace);
    }
    return null;
  }
}
