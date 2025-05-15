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

  Future<Response> getPokemonCards() async {
    final url = 'http://kinator.fr:37391/pokemon-cards/';

    return dio.get(url);
  }

  Future<Response> getPokemonCardId(int id) async {
    final url = 'http://kinator.fr:37391/pokemon-cards/$id';

    final res = dio.get(url);
    res.then((r) {print(r.data);});
    return res;
  }

  Future<Response> getPokemonTypes() async {
    final url = 'http://kinator.fr:37391/pokemon-types';

    return dio.get(url);
  }

  void getPokemonTypesId(int id) async {
    final url = 'http://kinator.fr:37391/pokemon-types/$id';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);

      var data = r.data as Map<String, dynamic>;
      return data;
    })
    .catchError((e) {
      if(e.response.statusCode == 404){
        var data = {"error" : "Pokemon not found"};
        print(data);
        return data;
      }
    });
  }

  void getPokemonAttacks() async {
    final url = 'http://kinator.fr:37391/pokemon-attacks';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);

      var data = r.data as List<dynamic>;
      return data;
    })
    .catchError((e) {
      if(e.response.statusCode == 404){
        var data = {"error" : "Pokemon not found"};
        print(data);
        return data;
      }
    });
  }

  void getPokemonAttacksId(int id) async {
    final url = 'http://kinator.fr:37391/pokemon-attacks/$id';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);

      var data = r.data as Map<String, dynamic>;
      return data;
    })
    .catchError((e) {
      if(e.response.statusCode == 404){
        var data = {"error" : "Pokemon not found"};
        print(data);
        return data;
      }
    });
  }

  void getCollections() async {
    final url = 'http://kinator.fr:37391/decks';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);

      var data = r.data as List<dynamic>;
      return data;
    })
    .catchError((e) {
      if(e.response.statusCode == 404){
        var data = {"error" : "Pokemon not found"};
        print(data);
        return data;
      }
    });
  }

  void getCollectionId(int id) async {
    final url = 'http://kinator.fr:37391/decks/$id';

    final Future<Response> response = dio.get(url);

    response.then((r) {
      print(r.statusCode);

      var data = r.data as Map<String, dynamic>;
      return data;
    })
    .catchError((e) {
      if(e.response.statusCode == 404){
        var data = {"error" : "Pokemon not found"};
        print(data);
        return data;
      }
    });
  }

  void createUser(String email, String password) async {
    final url = 'http://kinator.fr:37391/users';

    final Future<Response> response =
        dio.post(url, data: {"email": email, "password": password});
    response.then((r) {
      print(r.statusCode);
      var data = r.data as Map<String, dynamic>;
      return data;
    })
    .catchError((e) {
      if(e.response.statusCode == 404){
        var data = {"error" : "Pokemon not found"};
        print(data);
        return data;
      }
    });
  }

  void loginUser(String email, String password) async {
    final url = 'http://kinator.fr:37391/users/login';

    final Future<Response> response =
        dio.post(url, data: {"email": email, "password": password});
    response.then((r) {
      print(r.statusCode);
      var data = r.data as Map<String, dynamic>;
      return data;
    })
    .catchError((e) {
      if(e.response.statusCode == 404){
        var data = {"error" : "Pokemon not found"};
        print(data);
        return data;
      }
    });
  }

  void getUsers() async {
    final url = 'http://kinator.fr:37391/users';

    final Future<Response> response = dio.get(url);

    response.then((r) {
      print(r.statusCode);
      var data = r.data as List<dynamic>;
      return data;
    })
    .catchError((e) {
      if(e.response.statusCode == 404){
        var data = {"error" : "Pokemon not found"};
        print(data);
        return data;
      }
    });
  }

  void postCollection(
      String token, String name, int ownerId, List<int> pokemonIds) async {
    final url = 'http://kinator.fr:37391/decks';

    final Future<Response> response = dio.post(url,
        data: {"name": name, "owner_id": ownerId, "pokemon_ids": pokemonIds},
        options: Options(headers: {"Authorization": "Bearer $token"}));
    response.then((r) {
      print(r.statusCode);
      var data = r.data as Map<String, dynamic>;
      return data;
    })
    .catchError((e) {
      if(e.response.statusCode == 404){
        var data = {"error" : "Pokemon not found"};
        print(data);
        return data;
      }
    });
  }

  void getDeckId(int id) async {
    final url = 'http://kinator.fr:37391/decks/$id';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);
      var data = r.data as Map<String, dynamic>;
      return data;
    })
    .catchError((e) {
      if(e.response.statusCode == 404){
        var data = {"error" : "Pokemon not found"};
        print(data);
        return data;
      }
    });
  }

  void updateDeck(String token, int id, String name, int ownerId, List<int> pokemonIds) async {
    final url = 'http://kinator.fr:37391/decks/$id';

    final Future<Response> response = dio.put(url,
        data: {"name": name, "owner_id": ownerId, "pokemon_ids": pokemonIds},
        options: Options(headers: {"Authorization": "Bearer $token"}));
  }

  void deleteDeck(String token, int id) async {
    final url = 'http://kinator.fr:37391/decks/$id';

    final Future<Response> response = dio.delete(url,
        options: Options(headers: {"Authorization": "Bearer $token"}));
  }
}
