import 'package:package_test/domain/model/pokemons.dart';
import 'package:package_test/domain/interfaces/pokemons_interface.dart';
import 'package:package_test/data/infraestructure/datasources/pokemons_datasource.dart';

class PokemonRepositoryImpl implements PokemonsInterface {
  final PokemonDatasource datasource;

  PokemonRepositoryImpl({required this.datasource});

  @override
  Future<Pokemons> getListPokemons(String limit, String offset) {
    return datasource.getListPokemons(limit, offset);
  }
}
