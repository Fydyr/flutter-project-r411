import 'package:isar/isar.dart';

part 'attack_data.g.dart';

@collection
class AttackData{
  Id id = Isar.autoIncrement;
  int? idType;
  String? name;
  int? damage;
}