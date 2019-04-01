import 'package:flutter/material.dart';

import 'package:flutter_create_pokedex/src/screens/HomeScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Create Pokedex',
      home: HomeScreen(),
    );
  }
}
