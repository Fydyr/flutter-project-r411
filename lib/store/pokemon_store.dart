import 'dart:math';
import 'package:flutter_project_r411/data/pokemon_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_project_r411/api/api_helper.dart';

final pokemonStoreProvider =
StateNotifierProvider<PokemonStore, PokemonStoreState>((ref) {
  var apiHelper = ref.watch(apiHelperProvider);
  return PokemonStore(api: apiHelper);
});

// Cette classe permet de gérer le cache des équipes
class PokemonStore extends StateNotifier<PokemonStoreState> {
  PokemonStore({required this.api}) : super(PokemonStoreState.init()) {
    getPokemonCards();
  }

  final ApiHelper api;

  void getPokemonCards(){
    print("Get all cards");
    api.getPokemonCards().then((r) {
      List<PokemonData> pokemons = [];

      r.data.forEach((pokemon)  {
        print(pokemon);
        pokemons.add(PokemonData(
          id: pokemon["id"],
          name: pokemon["name"],
          pokedexId: pokemon["pokedexId"],
          typeId1: pokemon["typeId1"],
          typeIdWeakness: pokemon["typeIdWeakness"],
          attackId: pokemon["attackId"],
          lifePoints: pokemon["lifePoints"],
          size: pokemon["size"].toDouble(),
          weight: pokemon["weight"].toDouble(),
          imageUrl: (pokemon["imageUrl"] != null)? pokemon["imageUrl"] : ""
        ));
      });

      state = state.copyWith(allPokemons: pokemons);
    });
  }

  void getPokemonCardId(int id) async {
    List<PokemonData> pokemons = [];

    state.pokemons.forEach((pokemon) {
      pokemons.add(pokemon);
    });

    pokemons.add(state.allPokemons[id-1]);

    state = state.copyWith(pokemons: pokemons);
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
    List<int> randomIds = List.generate(count, (_) => random.nextInt(state.allPokemons.length) + 1); // IDs entre 1 et 36

    for (var id in randomIds) {
      getPokemonCardId(id);
    }
  }

  List<PokemonData> getNLastCards(int count) {
    List<PokemonData> list = [];
    for (var i = count; i > 0; i--) {
      list.add(state.pokemons.elementAt(state.pokemons.length - i));
    }
    return list;
  }

  String getUrlImagePokemon(int id) {
    return "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/$id.png";
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
      allPokemons: allPokemons ?? this.allPokemons
    );
  }
}