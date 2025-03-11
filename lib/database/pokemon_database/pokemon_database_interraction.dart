import 'package:flutter_project_r411/database/database_service.dart';
import 'package:isar/isar.dart';
import 'pokemon_data.dart';
import '../database_service.dart';

class PokemonDatabase{
  static Isar get isar => DatabaseService.isar;

  // create new pokemon
  static Future<void> addPokemon(int idPoke, String name, int lifePoints, int pokedexId, int type, String imageURL, double size, double weight, int idAttack, int numberPokemon) async {
    final newPokemon = PokemonData()
      ..idPoke = idPoke
      ..name = name
      ..lifePoints = lifePoints
      ..pokedexId = pokedexId
      ..type = type
      ..imageURL = imageURL
      ..size = size
      ..weight = weight
      ..idAttack = idAttack
      ..numberPokemon = 1;


    await isar.writeTxn(() async {
      await isar.pokemonDatas.put(newPokemon);
    });

    print("pokemon add to your collection with ID: ${newPokemon.id} and pokemon id : ${newPokemon.idPoke}");
  }

  /// Fetch all pokemon from collection if exist
  static Future<List<PokemonData>> getAllPokemonCollection() async {
    return await isar.pokemonDatas.where().findAll();
  }

  // update pokemon data
  static Future<void> updatePokemon(PokemonData pokemon) async {
    await isar.writeTxn(() async {
      await isar.pokemonDatas.put(pokemon);
    });
  }

}