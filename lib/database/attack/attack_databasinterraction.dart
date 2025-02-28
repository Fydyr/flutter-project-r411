import 'package:isar/isar.dart';
import 'attack_data.dart';
import 'package:path_provider/path_provider.dart';

class UserDatabase{
  static late Isar isar;

  static Future<void> initDatabase() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([AttackDataSchema], directory: dir.path);
  }

  // create new pokemon
  static Future<void> addPokemon(String name, int damage, int idType) async {
    final newPokemon = AttackData()
      ..name = name
    ..damage = damage
    ..idType = idType;


    await isar.writeTxn(() async {
      await isar.attackDatas.put(newPokemon);
    });

    print("pokemon add to your collection with ID: ${newPokemon.id} and pokemon id : ${newPokemon.idPoke}");
  }

  /// Fetch all pokemon from collection if exist
  static Future<List<AttackData>> getAllPokemonCollection() async {
    return await isar.attackDatas.where().findAll();
  }

  // update pokemon data
  static Future<void> updatePokemon(AttackData pokemon) async {
    await isar.writeTxn(() async {
      await isar.attackDatas.put(pokemon);
    });
  }

}