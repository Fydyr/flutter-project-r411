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
    final url = 'http://88.173.86.254:37391/pokemon-cards/1';

    final Future<Response> response = dio.get(url);
    response.then((r) {
      print(r.statusCode);

      var data = r.data as Map<String, dynamic>;
      print(data);
    });
  }
}