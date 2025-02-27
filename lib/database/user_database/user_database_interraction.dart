import 'package:isar/isar.dart';
import 'user_data.dart';
import 'package:path_provider/path_provider.dart';

class UserDatabase{
  static late Isar isar;

  static Future<void> initDatabase() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([UserDataSchema], directory: dir.path);
  }

  // create new user with an email and password
  static Future<void> addUser(String email, String password) async {
    final newUser = UserData()
      ..email = email
      ..password = password;

    await isar.writeTxn(() async {
      await isar.userDatas.put(newUser);
    });

    print("User add with ID: ${newUser.id}");
  }

  /// Fetch users if exist
  static Future<List<UserData>> getAllUsers() async {
    return await isar.userDatas.where().findAll();
  }

  // update user data
  static Future<void> updateUser(UserData user) async {
    await isar.writeTxn(() async {
      await isar.userDatas.put(user);
    });
  }

}