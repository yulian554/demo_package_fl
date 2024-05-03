import 'package:package_test/domain/model/pokemons.dart';

abstract interface class PokemonsInterface {
  Future<Pokemons> getListPokemons(String limit, String offset);
}
