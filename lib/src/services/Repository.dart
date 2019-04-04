import 'package:cloud_firestore/cloud_firestore.dart';

import './FirestoreService.dart';
import './PokeapiService.dart';
import '../models/Pokemon.dart';

class Repository {
  FirestoreService _firestoreService = FirestoreService();
  PokeapiService _pokeapiService = PokeapiService();

  Future<void> insertPokemon(String id, String name) => _firestoreService.insertPokemon(id, name);

  Stream<QuerySnapshot> queryPokemon() => _firestoreService.queryPokemon();

  Future<Pokemon> requestPokemonNames() => _pokeapiService.fetchPokemonName();
  // Future<dynamic> test() => _pokeapiService.fetchPokemon(); //TODO: Fix this function in order to pass to the request the appropriate id to fetch, and return the pokemon, then pass it to the db for insert
}
