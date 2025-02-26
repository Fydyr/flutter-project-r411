import 'package:isar/isar.dart';

part 'user.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement; // Vous pouvez aussi utiliser id = null pour l'auto incrémentation

  String? email;

  String? password;
}