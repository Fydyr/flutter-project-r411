import 'package:isar/isar.dart';

part 'pokemon_data.g.dart';

@collection
class PokemonData{
  Id id = Isar.autoIncrement;
  int? idPoke;
  String? name;
  double? lifePoints;
  int? pokedexId;
  int? type;
  String? imageURL;
  double? size;
  double? weight;
  int? idAttack;
  int? numberPokemon;
}