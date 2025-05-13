import 'dart:math';
import 'package:flutter_project_r411/data/pokemon_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_project_r411/api/api_helper.dart';
import '../database/database_service.dart';
import '../database/pokemon_database/pokemon_database_interraction.dart';

final pokemonStoreProvider =
StateNotifierProvider<PokemonStore, PokemonStoreState>((ref) {
  var apiHelper = ref.watch(apiHelperProvider);
  return PokemonStore(api: apiHelper);
});

// Cette classe permet de gérer le cache des équipes
class PokemonStore extends StateNotifier<PokemonStoreState> {
  PokemonStore({required this.api}) : super(PokemonStoreState.init()) {
    // Au démarrage, charger les pokémons depuis la BDD puis depuis l'API
    loadPokemonsFromDatabase().then((_) {
      getPokemonCards();
    });
  }

  final ApiHelper api;

  // Nouvelle méthode pour charger les pokémons depuis la BDD
  Future<void> loadPokemonsFromDatabase() async {
    print("Loading pokemons from database");
    final dbPokemons = await PokemonDatabase.getAllPokemonCollection();

    if (dbPokemons.isNotEmpty) {
      List<PokemonData> pokemons = [];
      List<PokemonData> allPokemons = [];

      // Convertir les pokémons de la BDD au format du store
      for (var dbPokemon in dbPokemons) {
        final pokemon = PokemonData(
            id: dbPokemon.idPoke ?? 0,
            name: dbPokemon.name ?? "",
            pokedexId: dbPokemon.pokedexId ?? 0,
            typeId1: dbPokemon.type ?? 0,
            typeIdWeakness: 0, // Valeur par défaut si non disponible
            attackId: dbPokemon.idAttack ?? 0,
            lifePoints: dbPokemon.lifePoints ?? 0,
            size: dbPokemon.size ?? 0.0,
            weight: dbPokemon.weight ?? 0.0,
            imageUrl: dbPokemon.imageURL ?? ""
        );

        // Si le pokémon a un nombre d'exemplaires > 0, l'ajouter à la liste pokemons
        if (dbPokemon.numberPokemon != null && dbPokemon.numberPokemon! > 0) {
          pokemons.add(pokemon);
        }

        allPokemons.add(pokemon);
      }

      state = state.copyWith(
          pokemons: pokemons,
          allPokemons: allPokemons
      );

      print("Loaded ${allPokemons.length} pokemons from database");
    }
  }

  void getPokemonCards(){
    print("Get all cards from API");
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

      // Mettre à jour allPokemons sans écraser la liste pokemons
      state = state.copyWith(allPokemons: pokemons);
    });
  }

  Future<void> getPokemonCardId(int id) async {
    List<PokemonData> pokemons = List.from(state.pokemons);
    final newPokemon = state.allPokemons[id-1];
    pokemons.add(newPokemon);

    // Ajouter le pokemon à la BDD
    await _savePokemonToDatabase(newPokemon);

    state = state.copyWith(pokemons: pokemons);
  }

  // Nouvelle méthode privée pour sauvegarder un pokemon dans la BDD
  Future<void> _savePokemonToDatabase(PokemonData pokemon) async {
    try {
      await PokemonDatabase.addPokemon(
          pokemon.id,
          pokemon.name,
          pokemon.lifePoints,
          pokemon.pokedexId,
          pokemon.typeId1,
          pokemon.imageUrl,
          pokemon.size,
          pokemon.weight,
          pokemon.attackId,
          1 // Par défaut, on ajoute 1 exemplaire
      );
      print("Pokemon ${pokemon.name} saved to database with ID: ${pokemon.id}");
    } catch (e) {
      print("Error saving pokemon to database: $e");
    }
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

  Future<void> getRandomPokemonCards(int count) async {
    final random = Random();
    List<int> randomIds = List.generate(count, (_) => random.nextInt(state.allPokemons.length) + 1); // IDs entre 1 et 36

    for (var id in randomIds) {
      await getPokemonCardId(id);
    }
  }

  List<PokemonData> getNLastCards(int count) {
    List<PokemonData> list = [];
    int length = state.pokemons.length;

    // Vérifier si nous avons assez de cartes
    if (length < count) {
      count = length; // Ajuster le compte si on n'a pas assez de cartes
    }

    for (var i = count; i > 0; i--) {
      list.add(state.pokemons.elementAt(length - i));
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