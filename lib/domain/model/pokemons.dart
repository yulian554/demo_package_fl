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
}

class InitialDataPokemons {
  String name;
  String url;

  InitialDataPokemons({
    required this.name,
    required this.url,
  });
}
