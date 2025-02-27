import 'dart:math';
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
    api.getPokemonCards().then((r) {
      List<PokemonData> pokemons = [];

      state.pokemons.forEach((pokemon) {
        pokemons.add(pokemon);
      });

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

  void getPokemonCardId(int id) async {
    api.getPokemonCardId(id).then((r) {
      List<PokemonData> pokemons = [];

      r.data.forEach((pokemon)  {
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
      });
      state = state.copyWith(allPokemons: pokemons);
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

  void getRandomPokemonCards(int count) {
    final random = Random();
    List<int> randomIds = List.generate(count, (_) => random.nextInt(state.allPokemons.length) + 1); // IDs entre 1 et 151

    for (var id in randomIds) {
      getPokemonCardId(id);
    }
  }
}

// Cette classe représente l'état du cache des équipes
class PokemonStoreState {
  // Variables
  final String token;
  final List<PokemonData> pokemons;
  final List<PokemonData> allPokemons;

  // Constructeur
  PokemonStoreState({
    this.token = "",
    this.pokemons = const [],
    this.allPokemons = const []
  });

  factory PokemonStoreState.init() {
    return PokemonStoreState();
  }

  // Permet de modifier le state
  PokemonStoreState copyWith({String? token, List<PokemonData>? pokemons, List<PokemonData>? allPokemons}) {
    return PokemonStoreState(
      token: token ?? this.token,
      pokemons: pokemons ?? this.pokemons,
      allPokemons: allPokemons ?? this.pokemons
    );
  }
}