import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_assignment/domain/user/user.dart';

extension FirebaseUser on User {
  AppUser toAppUser() {
    return AppUser(name: displayName!, uniqueId: uid);
  }
}