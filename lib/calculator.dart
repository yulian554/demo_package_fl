library package_test;

import 'package:package_test/domain/use_case/get_pokemons_use_case.dart';
import 'package:package_test/domain/use_case/impl/get_pokemons_use_case_impl.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
  final GetPokemonsUseCase useCase = GetPokemonsUseCaseImpl();
}
