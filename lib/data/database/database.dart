import 'package:dartz/dartz.dart';
import 'package:flutter_assignment/core/auth/auth.dart';
import 'package:flutter_assignment/domain/result/result.dart';
import 'package:flutter_assignment/domain/user/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';

abstract interface class Database {
  Future<Result<String, Unit>> fetchApiKey();
}

@LazySingleton(as: Database)
class FirestoreDatabase implements Database {
  final Auth _auth;
  final FirebaseFirestore _firebaseFirestore;

  const FirestoreDatabase(this._auth, this._firebaseFirestore);

  @override
  Future<Result<String, Unit>> fetchApiKey() async {
    DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
        .collection('credentials')
        .doc('QhRaLo39TNrDX41zEfem')
        .get();


    print("[FirestoreDatabase] - fetchApiKey: $documentSnapshot" );

    if (documentSnapshot.exists) {
      var data = documentSnapshot.data() as Map<String, dynamic>;
      print('[FirestoreDatabase] - Document data: ${data}');
      String? apiKey = data['api_key'];
      return Result.success(apiKey);
    } else {
      print('[FirestoreDatabase] - Document does not exist.');
    }
    // AppUser? user = await _auth.getSignedInUser().then((value) => value.fold(() => null, id));
    // if(user != null){
    //   //Todo fetch data from database
    // }
    return const Result.failure(unit);
  }
}