import 'app_const.dart';

class PokemonData{
  int id;
  String name;
  int pokedexId;
  int typeId1;
  int typeIdWeakness;
  int attackId;
  int lifePoints;
  double size;
  double weight;
  String imageUrl;

  PokemonData({
    this.id = AppConst.PokemonCardId,
    this.name = AppConst.PokemonCardName,
    this.pokedexId = AppConst.PokemonPokedexId,
    this.typeId1 = AppConst.PokemonTypeId1,
    this.typeIdWeakness = AppConst.PokemonTypeIdWeakness,
    this.attackId = AppConst.PokemonAttackId,
    this.lifePoints = AppConst.PokemonLifePoints,
    this.size = AppConst.PokemonSize,
    this.weight = AppConst.PokemonWeight,
    this.imageUrl = AppConst.PokemonUrl
  });
}