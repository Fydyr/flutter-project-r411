import 'package:isar/isar.dart';
import 'user.dart';
import 'package:path_provider/path_provider.dart';

class UserDatabase{
  static late Isar isar;

  static Future<void> initDatabase() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([UserSchema], directory: dir.path);
  }

  // create new user with an email and password
  static Future<void> addUser(String email, String password) async {
    final newUser = User()
      ..email = email
      ..password = password;

    await isar.writeTxn(() async {
      await isar.users.put(newUser);
    });

    print("User add with ID: ${newUser.id}");
  }

  /// Fetch users if exist
  static Future<List<User>> getAllUsers() async {
    return await isar.users.where().findAll();
  }

}