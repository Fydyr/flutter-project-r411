import 'package:isar/isar.dart';

part 'user_data.g.dart';

@collection
class UserData {
  Id id = Isar.autoIncrement;
  String? email;
  String? password;
}