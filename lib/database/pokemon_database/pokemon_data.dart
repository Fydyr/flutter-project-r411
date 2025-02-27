import 'package:isar/isar.dart';

part 'pokemon_data.g.dart';

@collection
class PokemonData{
  Id id = Isar.autoIncrement;
  int? idPoke;
  String? name;
  int? lifePoints;
  int? pokedexId;
  int? type;
  String? imageURL;
  int? size;
  int? weight;
}