import 'app_const.dart';

class PokemonData{
  String name = AppConst.PokemonCardName;
  int pokedexId = AppConst.PokemonPokedexId;
  int typeId1 = AppConst.PokemonTypeId1;
  int typeId2 = AppConst.PokemonTypeId2;
  int typeIdWeakness = AppConst.PokemonTypeIdWeakness;
  int attackId = AppConst.PokemonAttackId;
  int lifePoints = AppConst.PokemonLifePoints;
  double size = AppConst.PokemonSize;
  double weight = AppConst.PokemonWeight;
  String url = AppConst.PokemonUrl;

  PokemonData({required this.name});
}