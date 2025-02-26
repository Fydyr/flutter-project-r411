import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_project_r411/api/dio_provider.dart';

final apiHelperProvider = Provider<ApiHelper>((ref){
  var dio = ref.watch(dioProvider);
  return ApiHelper(dio: dio);
});

class ApiHelper {
  ApiHelper({required this.dio});
  final Dio dio;

  void getPokemonCards(){
    final url = 'http://88.173.86.254:37391/pokemon-cards/';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);

      var data = r.data as List<dynamic>;
      print(data);
    });
  }

  void getPokemonCardId(int id){
    final url = 'http://88.173.86.254:37391/pokemon-cards/$id';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);

      var data = r.data as Map<String, dynamic>;
      print(data);
    });
  }

  void getPokemonTypes(){
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
}