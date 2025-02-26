import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_project_r411/api/dio_provider.dart';

final apiHelperProvider = Provider<ApiHelper>((ref) {
  var dio = ref.watch(dioProvider);
  return ApiHelper(dio: dio);
});

class ApiHelper {
  ApiHelper({required this.dio});
  final Dio dio;

  void getPokemonCards() {
    final url = 'http://88.173.86.254:37391/pokemon-cards/';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);

      var data = r.data as List<dynamic>;
      print(data);
    });
  }

  void getPokemonCardId(int id) {
    final url = 'http://88.173.86.254:37391/pokemon-cards/$id';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);

      var data = r.data as Map<String, dynamic>;
      print(data);
    });
  }

  void getPokemonTypes() {
    final url = 'http://88.173.86.254:37391/pokemon-types';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);

      var data = r.data as List<dynamic>;
      print(data);
    });
  }

  void getPokemonTypesId(int id) {
    final url = 'http://88.173.86.254:37391/pokemon-types/$id';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);

      var data = r.data as Map<String, dynamic>;
      print(data);
    });
  }

  void getPokemonAttacks() {
    final url = 'http://88.173.86.254:37391/pokemon-attacks';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);

      var data = r.data as List<dynamic>;
      print(data);
    });
  }

  void getPokemonAttacksId(int id) {
    final url = 'http://88.173.86.254:37391/pokemon-attacks/$id';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);

      var data = r.data as Map<String, dynamic>;
      print(data);
    });
  }

  void getCollections() {
    final url = 'http://88.173.86.254:37391/decks';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);

      var data = r.data as List<dynamic>;
      print(data);
    });
  }

  void getCollectionId(int id) {
    final url = 'http://88.173.86.254:37391/decks/$id';

    final Future<Response> response = dio.get(url);

    response.then((r) {
      print(r.statusCode);

      var data = r.data as Map<String, dynamic>;
      print(data);
    });
  }

  void createUser(String email, String password) {
    final url = 'http://88.173.86.254:37391/users';

    final Future<Response> response =
        dio.post(url, data: {"email": email, "password": password});
    response.then((r) {
      print(r.statusCode);
      var data = r.data as Map<String, dynamic>;
      print(data);
    });
  }

  void loginUser(String email, String password) {
    final url = 'http://88.173.86.254:37391/users/login';

    final Future<Response> response =
        dio.post(url, data: {"email": email, "password": password});
    response.then((r) {
      print(r.statusCode);
      var data = r.data as Map<String, dynamic>;
      print(data);
    });
  }

  void getUsers() {
    final url = 'http://88.173.86.254:37391/users';

    final Future<Response> response = dio.get(url);

    response.then((r) {
      print(r.statusCode);
      var data = r.data as List<dynamic>;
      print(data);
    });
  }

  void postCollection(
      String token, String name, int ownerId, List<int> pokemonIds) {
    final url = 'http://88.173.86.254:37391/decks';

    final Future<Response> response = dio.post(url,
        data: {"name": name, "owner_id": ownerId, "pokemon_ids": pokemonIds},
        options: Options(headers: {"Authorization": "Bearer $token"}));
    response.then((r) {
      print(r.statusCode);
      var data = r.data as Map<String, dynamic>;
      print(data);
    });
  }

  void getDeckId(int id) {
    final url = 'http://88.173.86.254:37391/decks/$id';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);
      var data = r.data as Map<String, dynamic>;
      print(data);
    });
  }

  void updateDeck(
      String token, int id, String name, int ownerId, List<int> pokemonIds) {
    final url = 'http://88.173.86.254:37391/decks/$id';

    final Future<Response> response = dio.put(url,
        data: {"name": name, "owner_id": ownerId, "pokemon_ids": pokemonIds},
        options: Options(headers: {"Authorization": "Bearer $token"}));
  }

  void deleteDeck(String token, int id) {
    final url = 'http://88.173.86.254:37391/decks/$id';

    final Future<Response> response = dio.delete(url,
        options: Options(headers: {"Authorization": "Bearer $token"}));
  }
}
