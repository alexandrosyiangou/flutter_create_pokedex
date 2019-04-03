import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  Firestore _firestore = Firestore.instance;
  
  //TODO: Insert to Pokemon table
  Future<void> insertPokemon(String index) {
    return _firestore
      .collection('Pokemon')
      .document(index)
      .setData({
        'data': 'test'
      });
  }

  //TODO: Query data from pokemon table
  Stream<QuerySnapshot> queryPokemon() {
    return _firestore
      .collection('Pokemon')
      .snapshots();
  }
}
