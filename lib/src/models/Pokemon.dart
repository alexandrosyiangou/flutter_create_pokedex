

class Pokemon {
  int id;
  String name;

  Pokemon({this.id, this.name});

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    // print(json['id']);
    // print(json['name']);
    return Pokemon(
      id: json['id'],
      name: json['name']
    );
  }
}
