import 'package:isar/isar.dart';

part 'type_image_data.g.dart';

@collection
class TypeImageData {
  Id id = Isar.autoIncrement;
  int? typeId;
  String? name;
  String? imageLinkAccess;
}