import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_project_r411/api/api_helper.dart';

final appStoreProvider =
StateNotifierProvider<AppStore, AppStoreState>((ref) {
  var apiHelper = ref.watch(apiHelperProvider);
  return AppStore(api: apiHelper);
});

// Cette classe permet de gérer le cache des équipes
class AppStore extends StateNotifier<AppStoreState> {
  AppStore({required this.api}) : super(AppStoreState.init());

  final ApiHelper api;

  void getPokemonCards(){
    print("Get all cards");
    api.getPokemonCards()
        .then((r) {
      print(r.statusCode);

      var data = [];
      r.data.forEach( (pokemon) {
        data.add({
          "id": pokemon["id"],
          "name": pokemon["name"],
          "pokedexId": pokemon["pokedexId"],
          "typeId1": pokemon["typeId1"],
          "typeId2": pokemon["typeId2"],
          "typeIdWeakness": pokemon["typeIdWeakness"],
          "attackId": pokemon["attackId"],
          "lifePoints": pokemon["lifePoints"],
          "size": pokemon["size"],
          "weight": pokemon["weight"],
          "imageUrl": pokemon["imageUrl"]
        });
      });

      print(data);
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

  void getPokemonCardId(int id){
    print("Get card N°$id");
    api.getPokemonCardId(id)
        .then((r) {
      print(r.statusCode);

      var data = {
        "id": r.data["id"],
        "name": r.data["name"],
        "pokedexId": r.data["pokedexId"],
        "typeId1": r.data["typeId1"],
        "typeIdWeakness": r.data["typeIdWeakness"],
        "attackId": r.data["attackId"],
        "lifePoints": r.data["lifePoints"],
        "size": r.data["size"],
        "weight": r.data["weight"],
        "imageUrl": r.data["imageUrl"]
      };
      print(data);
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

  void getPokemonTypes(){
    print("Get all types");
    api.getPokemonTypes()
        .then((r) {
      print(r.statusCode);

      var data = {
        "id": r.data["id"],
        "name": r.data["name"],
        "pokedexId": r.data["pokedexId"],
        "typeId1": r.data["typeId1"],
        "typeId2": r.data["typeId2"],
        "typeIdWeakness": r.data["typeIdWeakness"],
        "attackId": r.data["attackId"],
        "lifePoints": r.data["lifePoints"],
        "size": r.data["size"],
        "weight": r.data["weight"],
        "imageUrl": r.data["imageUrl"]
      };
      print(data);
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
}

// Cette classe représente l'état du cache des équipes
class AppStoreState {
  // Variables
  String token = '';

  // Constructeur
  AppStoreState();

  factory AppStoreState.init() {
    return AppStoreState();
  }

  // Permet de modifier le state
  AppStoreState copyWith() {
    return AppStoreState(

    );
  }
}