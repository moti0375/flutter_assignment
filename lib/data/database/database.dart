import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

abstract interface class Database {
  Future<String?> fetchApiKey();
}

@LazySingleton(as: Database)
class FirestoreDatabase implements Database {
  final FirebaseFirestore _firebaseFirestore;
  const FirestoreDatabase(this._firebaseFirestore);

  @override
  Future<String?> fetchApiKey() async {
    DocumentSnapshot documentSnapshot = await _firebaseFirestore
        .collection('credentials')
        .doc('QhRaLo39TNrDX41zEfem')
        .get();


    print("[FirestoreDatabase] - fetchApiKey: $documentSnapshot" );

    if (documentSnapshot.exists) {
      var data = documentSnapshot.data() as Map<String, dynamic>;
      print('[FirestoreDatabase] - Document data: ${data}');
      String? apiKey = data['api_key'];
      return apiKey;
    } else {
      print('[FirestoreDatabase] - Document does not exist.');
    }
    return null;
  }
}