

class Pokemon {
  // int id;
  // String name;
  List<dynamic> results;

  // Pokemon({this.id, this.name});
  Pokemon({this.results});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(results: json['results']);
  }
}
