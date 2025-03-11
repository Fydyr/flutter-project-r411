import 'package:isar/isar.dart';
import '../database_service.dart';
import 'attack_data.dart';

class AttackDatabase{
  static Isar get isar => DatabaseService.isar;

  // create new pokemon
  static Future<void> addAttack(String name, int damage, int idType) async {
    final newPokemon = AttackData()
      ..name = name
    ..damage = damage
    ..idType = idType;


    await isar.writeTxn(() async {
      await isar.attackDatas.put(newPokemon);
    });

    print("Attack add to your collection with ID: ${newPokemon.id}");
  }

  /// Fetch all pokemon from collection if exist
  static Future<List<AttackData>> getAllAttacks() async {
    return await isar.attackDatas.where().findAll();
  }

  // update pokemon data
  static Future<void> updateAttack(AttackData pokemon) async {
    await isar.writeTxn(() async {
      await isar.attackDatas.put(pokemon);
    });
  }

}