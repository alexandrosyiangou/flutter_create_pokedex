import 'package:flutter/material.dart';

import '../models/Pokemon.dart';
import '../services/PokeapiService.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      appBar: AppBar(
        title: Text('Flutter Create Pokedex'),
      ),
      body: Center(
        child: FutureBuilder<Pokemon>(
          future: PokeapiService().fetchPokemon(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.name);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
