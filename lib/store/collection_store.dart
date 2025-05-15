import 'package:flutter_project_r411/store/pokemon_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../database/pokemon_database/pokemon_database_interraction.dart';

final collectionStoreProvider =
StateNotifierProvider<CollectionStore, CollectionStoreState>((ref) {
  final PokemonStore store = ref.read(pokemonStoreProvider.notifier);
  return CollectionStore(store);
});

// Cette classe permet de gérer le cache des équipes
class CollectionStore extends StateNotifier<CollectionStoreState> {
  CollectionStore(this.store) : super(CollectionStoreState.init()) {
    // Charger la collection depuis la BDD au démarrage
    loadCollectionFromDatabase();
  }

  PokemonStore store;

  // Nouvelle méthode pour charger la collection depuis la BDD
  Future<void> loadCollectionFromDatabase() async {
    print("Loading collection from database");
    final dbPokemons = await PokemonDatabase.getAllPokemonCollection();

    if (dbPokemons.isNotEmpty) {
      Map<int, int> collection = {};

      // Compter les pokémons par pokedexId
      for (var dbPokemon in dbPokemons) {
        if (dbPokemon.pokedexId != null && dbPokemon.numberPokemon != null) {
          if (collection.containsKey(dbPokemon.pokedexId)) {
            collection[dbPokemon.pokedexId!] = collection[dbPokemon.pokedexId!]! + dbPokemon.numberPokemon!;
          } else {
            collection[dbPokemon.pokedexId!] = dbPokemon.numberPokemon!;
          }
        }
      }

      state = state.copyWith(collection: collection);
      print("Loaded collection with ${collection.length} different pokemon types");
    }
  }

  Future<void> addNCardsToCollection(int count) async {
    Map<int, int> cards = Map.from(state.collection);
    final newCards = store.getNLastCards(count);

    for (var pokemon in newCards) {
      if (cards.containsKey(pokemon.pokedexId)) {
        cards[pokemon.pokedexId] = cards[pokemon.pokedexId]! + 1;
      }
      else {
        cards[pokemon.pokedexId] = 1;
      }

      // Mettre à jour le nombre d'exemplaires dans la BDD
      await updatePokemonCountInDatabase(pokemon.pokedexId);
    }

    state = state.copyWith(collection: cards);
  }

  // Nouvelle méthode pour mettre à jour le nombre d'exemplaires d'un pokémon dans la BDD
  Future<void> updatePokemonCountInDatabase(int pokedexId) async {
    try {
      // Récupérer tous les pokémons avec ce pokedexId
      final dbPokemons = await PokemonDatabase.getAllPokemonCollection();
      final matchingPokemons = dbPokemons.where((p) => p.pokedexId == pokedexId).toList();

      if (matchingPokemons.isNotEmpty) {
        // Mettre à jour le premier pokémon trouvé avec ce pokedexId
        final pokemon = matchingPokemons.first;
        pokemon.numberPokemon = (pokemon.numberPokemon ?? 0) + 1;
        await PokemonDatabase.updatePokemon(pokemon);
        print("Updated pokemon with pokedexId $pokedexId, new count: ${pokemon.numberPokemon}");
      }
    } catch (e) {
      print("Error updating pokemon count in database: $e");
    }
  }
}

class CollectionStoreState {
  // Variables
  final Map<int, int> collection;

  // Constructeur
  CollectionStoreState({
    this.collection = const {},
  });

  factory CollectionStoreState.init() {
    return CollectionStoreState();
  }

  // Permet de modifier le state
  CollectionStoreState copyWith({Map<int, int>? collection}) {
    return CollectionStoreState(
      collection: collection ?? this.collection,
    );
  }
}