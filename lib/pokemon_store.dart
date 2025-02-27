import 'package:dio/dio.dart';
import 'package:flutter_project_r411/pokemon_data.dart';
import 'package:flutter_project_r411/widgets/pokemon_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_project_r411/api/api_helper.dart';

final pokemonStoreProvider =
StateNotifierProvider<PokemonStore, PokemonStoreState>((ref) {
  var apiHelper = ref.watch(apiHelperProvider);
  return PokemonStore(api: apiHelper);
});

// Cette classe permet de gérer le cache des équipes
class PokemonStore extends StateNotifier<PokemonStoreState> {
  PokemonStore({required this.api}) : super(PokemonStoreState.init());

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

  void getPokemonCardId(int id) async {
    api.getPokemonCardId(id).then((r) {
      List<PokemonData> pokemons = [];

      state.pokemons.forEach((pokemon) {
        pokemons.add(pokemon);
      }
      );

      pokemons.add(PokemonData(
          id: r.data["id"],
          name: r.data["name"],
          pokedexId: r.data["pokedexId"],
          typeId1: r.data["typeId1"],
          typeIdWeakness: r.data["typeIdWeakness"],
          attackId: r.data["attackId"],
          lifePoints: r.data["lifePoints"],
          size: r.data["size"].toDouble(),
          weight: r.data["weight"].toDouble(),
          imageUrl: (r.data["imageUrl"] != null)? r.data["imageUrl"] : ""
      ));
      state = state.copyWith(pokemons: pokemons);
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
class PokemonStoreState {
  // Variables
  final String token;
  final List<PokemonData> pokemons;

  // Constructeur
  PokemonStoreState({
    this.token = "",
    this.pokemons = const []
  });

  factory PokemonStoreState.init() {
    var result = PokemonStoreState();
    return result;
  }

  // Permet de modifier le state
  PokemonStoreState copyWith({String? token, List<PokemonData>? pokemons}) {
    return PokemonStoreState(
      token: token ?? this.token,
      pokemons: pokemons ?? this.pokemons
    );
  }
}