class Pokemons {
  int count;
  String next;
  String previous;
  List<InitialDataPokemons> results;

  Pokemons({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  factory Pokemons.fromJson(Map<String, dynamic> json) => Pokemons(
        count: json['count'] ?? 0,
        next: json['next'] ?? '',
        previous: json['previous'] ?? '',
        results: List<InitialDataPokemons>.from(
            json["results"].map((item) => InitialDataPokemons.fromJson(item))),
      );
}

class InitialDataPokemons {
  String name;
  String url;

  InitialDataPokemons({
    required this.name,
    required this.url,
  });

  factory InitialDataPokemons.fromJson(Map<String, dynamic> json) =>
      InitialDataPokemons(
        name: json["name"],
        url: json["url"],
      );
}
