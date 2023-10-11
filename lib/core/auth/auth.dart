import 'package:flutter/services.dart';
import 'package:flutter_assignment/domain/user/firebase_auth_mapper.dart';
import 'package:flutter_assignment/domain/user/app_user.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

abstract interface class Auth {
  Future<bool> signInWithGoogle();
  Future<AppUser?> getSignedInUser();
  Future<void> signOut();
}

@LazySingleton(as: Auth)
class AuthImpl  implements Auth {
  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;

  AuthImpl(this._googleSignIn, this._firebaseAuth);

  @override
  Future<bool> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return false;
      }

      final authentication = await googleUser.authentication;
      final authCredentials = GoogleAuthProvider.credential(
        idToken: authentication.idToken,
        accessToken: authentication.accessToken,
      );

      return _firebaseAuth.signInWithCredential(authCredentials).then((value) => true);
    } on PlatformException catch (_) {
      return false;
    }
  }

  @override
  Future<AppUser?> getSignedInUser() async {
    final User? firebaseUser = _firebaseAuth.currentUser;
    return firebaseUser?.toAppUser();
  }

  @override
  Future<void> signOut() => Future.wait([_firebaseAuth.signOut(), _googleSignIn.signOut()]);

}