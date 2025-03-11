import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io'; // Pour Directory
import 'user_database/user_data.dart'; // Import du modèle User
import 'pokemon_database/pokemon_data.dart'; // Import du modèle Pokémon
import 'type_image/type_image_data.dart'; // import du modèle Type image
import 'attack/attack_data.dart'; // import du modèle Attack

class DatabaseService {
  static late Isar isar;

  /// **Initialisation de la base de données**
  static Future<void> initDatabase() async {
    final Directory dir = await getApplicationDocumentsDirectory();

    isar = await Isar.open(
      [UserDataSchema, PokemonDataSchema, TypeImageDataSchema, AttackDataSchema], // Ajouter ici toutes les tables
      directory: dir.path,
    );
  }
}
