import 'package:demo_package_fl/domain/model/pokemons.dart';

abstract interface class PokemonsInterface {
  Future<Pokemons> getListPokemons(String limit, String offset);
}
