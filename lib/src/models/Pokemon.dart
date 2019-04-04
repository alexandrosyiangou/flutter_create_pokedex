

class Pokemon {
  // int id;
  // String name;
  List<String> names;

  // Pokemon({this.id, this.name});
  Pokemon({this.names});

  List<String> get getNames => this.names;

  // factory Pokemon.fromJson(Map<String, dynamic> json) {
  //   return Pokemon(results: json['results']);
  // }

  factory Pokemon.fromJSON(Map<String, dynamic> json) {
    List<Map<String, String>> results = json['results'];
    return Pokemon(names: results.map((result) => result['name']).toList());
  }
}
