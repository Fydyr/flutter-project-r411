import 'package:isar/isar.dart';
import '../database_service.dart';
import 'type_image_data.dart';

class TypeImageDatabase{
  static Isar get isar => DatabaseService.isar;

  // create new type
  static Future<void> addType(String name, int typeId, String imageLink) async {
    final newType = TypeImageData()
      ..name
      ..typeId
      ..imageLinkAccess;


    await isar.writeTxn(() async {
      await isar.typeImageDatas.put(newType);
    });

    print("Add type to database with ID: ${newType.id}");
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