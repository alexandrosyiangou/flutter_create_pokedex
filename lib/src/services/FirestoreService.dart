import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  Firestore _firestore = Firestore.instance;
  
  //TODO: Insert to Pokemon table
  Future<void> insertPokemon(String id, String name) {
    return _firestore
      .collection('Pokemon')
      .document(id)
      .setData({
        'name': name,
      });
  }

  //TODO: Query data from pokemon table
  Stream<QuerySnapshot> queryPokemon() {
    return _firestore
      .collection('Pokemon')
      .snapshots();
  }
}
