import 'package:flutter_project_r411/data/pokemon_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../database/pokemon_database/pokemon_database_interraction.dart';

final deckStoreProvider =
StateNotifierProvider<DeckStore, DeckStoreState>((ref) {
  return DeckStore();
});

// Cette classe permet de gérer le cache des équipes
class DeckStore extends StateNotifier<DeckStoreState> {
  DeckStore() : super(DeckStoreState.init()) {
    // Charger les decks depuis la BDD au démarrage
    loadDecksFromDatabase();
  }

  // Nouvelle méthode pour charger les decks depuis la BDD
  Future<void> loadDecksFromDatabase() async {
    // Note: Cette méthode ne fait rien pour l'instant car nous n'avons pas encore de table dans la BDD pour stocker les decks
    // Elle devra être implémentée quand une table pour les decks sera ajoutée à la BDD
    print("Loading decks from database - not implemented yet");

    // Pour l'exemple, voici comment cela pourrait être implémenté :
    /*
    final dbDecks = await DeckDatabase.getAllDecks();

    if (dbDecks.isNotEmpty) {
      List<List<PokemonData>> decks = [];

      for (var dbDeck in dbDecks) {
        List<PokemonData> deckPokemons = [];

        // Convertir les pokémons du deck au format PokemonData
        for (var dbPokemon in dbDeck.pokemons) {
          final pokemon = PokemonData(
            id: dbPokemon.idPoke ?? 0,
            name: dbPokemon.name ?? "",
            pokedexId: dbPokemon.pokedexId ?? 0,
            typeId1: dbPokemon.type ?? 0,
            typeIdWeakness: 0,
            attackId: dbPokemon.idAttack ?? 0,
            lifePoints: dbPokemon.lifePoints ?? 0,
            size: dbPokemon.size ?? 0.0,
            weight: dbPokemon.weight ?? 0.0,
            imageUrl: dbPokemon.imageURL ?? ""
          );

          deckPokemons.add(pokemon);
        }

        decks.add(deckPokemons);
      }

      state = state.copyWith(decks: decks);
      print("Loaded ${decks.length} decks from database");
    }
    */
  }

  // Ajouter un nouveau deck
  Future<void> addDeck(List<PokemonData> deck) async {
    List<List<PokemonData>> decks = List.from(state.decks);
    decks.add(deck);

    // Sauvegarder le deck dans la BDD
    await saveDeckToDatabase(deck);

    state = state.copyWith(decks: decks);
  }

  // Méthode pour sauvegarder un deck dans la BDD
  Future<void> saveDeckToDatabase(List<PokemonData> deck) async {
    // Note: Cette méthode ne fait rien pour l'instant car nous n'avons pas encore de table dans la BDD pour stocker les decks
    // Elle devra être implémentée quand une table pour les decks sera ajoutée à la BDD
    print("Saving deck to database - not implemented yet");

    // Pour l'exemple, voici comment cela pourrait être implémenté :
    /*
    try {
      int deckId = await DeckDatabase.createDeck("Deck ${state.decks.length + 1}");

      for (var pokemon in deck) {
        await DeckPokemonDatabase.addPokemonToDeck(
          deckId,
          pokemon.id,
          pokemon.pokedexId
        );
      }

      print("Saved deck to database with ID: $deckId");
    } catch (e) {
      print("Error saving deck to database: $e");
    }
    */
  }
}

class DeckStoreState {
  // Variables
  final List<List<PokemonData>> decks;

  // Constructeur
  DeckStoreState({
    this.decks = const [],
  });

  factory DeckStoreState.init() {
    return DeckStoreState();
  }

  // Permet de modifier le state
  DeckStoreState copyWith({List<List<PokemonData>>? decks}) {
    return DeckStoreState(
      decks: decks ?? this.decks,
    );
  }
}