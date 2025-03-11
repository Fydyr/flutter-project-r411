import 'dart:math';
import 'package:flutter_project_r411/data/pokemon_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_project_r411/api/api_helper.dart';

final deckStoreProvider =
StateNotifierProvider<DeckStore, DeckStoreState>((ref) {
  return DeckStore();
});

// Cette classe permet de gérer le cache des équipes
class DeckStore extends StateNotifier<DeckStoreState> {
  DeckStore() : super(DeckStoreState.init());

  
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