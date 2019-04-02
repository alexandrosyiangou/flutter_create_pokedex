
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/Pokemon.dart';

class PokeapiService {
  Future<Pokemon> fetchPokemon() async {
    final response =
        await http.get('https://pokeapi.co/api/v2/pokemon/1');

    if (response.statusCode == 200) {
      // If server returns an OK response, parse the JSON
      return Pokemon.fromJson(json.decode(response.body));
    } else {
      // If that response was not OK, throw an error.
      throw Exception('Failed to load pokemon');
    }
  }
}
