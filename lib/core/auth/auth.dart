import 'package:flutter/services.dart';
import 'package:flutter_assignment/core/failures/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/failures/firebase_auth_mapper.dart';
import 'package:flutter_assignment/domain/result/result.dart';
import 'package:flutter_assignment/domain/user/user.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

abstract interface class Auth {
  Future<Result<Unit, AuthFailure>> signInWithGoogle();
  Future<Result<AppUser, Unit>> getSignedInUser();
  Future<void> signOut();
}

@LazySingleton(as: Auth)
class AuthImpl  implements Auth {
  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;

  AuthImpl(this._googleSignIn, this._firebaseAuth);

  @override
  Future<Result<Unit, AuthFailure>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return const Result.failure(AuthFailure.cancelledByUser());
      }

      final authentication = await googleUser.authentication;
      final authCredentials = GoogleAuthProvider.credential(
        idToken: authentication.idToken,
        accessToken: authentication.accessToken,
      );

      return _firebaseAuth.signInWithCredential(authCredentials).then((value) => const Result.success(unit));
    } on PlatformException catch (_) {
      return const Result.failure(AuthFailure.serverError());
    }
  }

  @override
  Future<Result<AppUser, Unit>> getSignedInUser() async {
    final User? firebaseUser = _firebaseAuth.currentUser;
    return Result.success(firebaseUser?.toAppUser());
  }

  @override
  Future<void> signOut() => Future.wait([_firebaseAuth.signOut(), _googleSignIn.signOut()]);

}