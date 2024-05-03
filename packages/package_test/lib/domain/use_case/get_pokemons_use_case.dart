import 'package:package_test/domain/model/pokemons.dart';

abstract interface class GetPokemonsUseCase {
  Future<Pokemons> getListPokemons();
}
