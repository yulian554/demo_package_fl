import 'package:package_test/data/infraestructure/datasources/impl/pokemons_datasource_impl.dart';
import 'package:package_test/data/infraestructure/repositories/pokemons_repository_impl.dart';
import 'package:package_test/domain/interfaces/pokemons_interface.dart';
import 'package:package_test/domain/model/pokemons.dart';
import 'package:package_test/domain/use_case/get_pokemons_use_case.dart';

class GetPokemonsUseCaseImpl implements GetPokemonsUseCase {
  late PokemonsInterface repository;

  GetPokemonsUseCaseImpl() {
    repository = PokemonRepositoryImpl(datasource: PokemonDatasourceImpl());
  }

  @override
  Future<Pokemons> getListPokemons() {
    return repository.getListPokemons("10", "0");
  }
}
