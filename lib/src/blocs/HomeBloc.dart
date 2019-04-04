import 'package:cloud_firestore/cloud_firestore.dart';

import '../services/Repository.dart';

class HomeBloc {
  Repository _repository = Repository();

  Future<void> insertPokemon(String id, String name) =>
    _repository.insertPokemon(id, name);

  Stream<QuerySnapshot> queryPokemon() =>
    _repository.queryPokemon();

  void loopInserts() {
    for (int i = 0; i < 100; i++) {
      insertPokemon(i.toString(), 'name');    
    }
  }
}
