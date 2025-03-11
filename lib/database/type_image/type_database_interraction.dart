import 'package:isar/isar.dart';
import 'type_image_data.dart';
import 'package:path_provider/path_provider.dart';

class TypeImageDatabase{
  static late Isar isar;

  static Future<void> initDatabase() async {
    final dir = await getApplicationDocumentsDirectory();
    isar = await Isar.open([TypeImageDataSchema], directory: dir.path);
  }

  // create new type
  static Future<void> addType(String name, int typeId, String imageLink) async {
    final newType = TypeImageData()
      ..name
      ..typeId
      ..imageLinkAccess;


    await isar.writeTxn(() async {
      await isar.typeImageDatas.put(newType);
    });

    print("pokemon add to your collection with ID: ${newType.id}");
  }

  /// Fetch all types from the database
  static Future<List<TypeImageData>> getAllType() async {
    return await isar.typeImageDatas.where().findAll();
  }

  // update type data
  static Future<void> updateType(TypeImageData typeImage) async {
    await isar.writeTxn(() async {
      await isar.typeImageDatas.put(typeImage);
    });
  }

}