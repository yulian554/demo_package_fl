import 'package:package_test/domain/model/pokemons.dart';

abstract class PokemonDatasource {
  Future<Pokemons> getListPokemons(String limit, String offset);
}
