import 'package:dio/dio.dart';
import 'package:package_test/data/infraestructure/datasources/pokemons_datasource.dart';
import 'package:package_test/domain/model/pokemons.dart';

class PokemonDatasourceImpl implements PokemonDatasource {
  final _dio = Dio();

  @override
  Future<Pokemons> getListPokemons(String limit, String offset) async {
    final response = await _dio
        .get('https://pokeapi.co/api/v2/pokemon?limit=$limit&offset=$offset');
    if (response.statusCode == 200) {
      var data = Pokemons.fromJson(response.data);
      return data;
    } else {
      throw Exception("Error");
    }
  }
}
