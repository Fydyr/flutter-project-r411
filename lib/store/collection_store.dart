import 'dart:math';
import 'package:flutter_project_r411/data/nb_cards_data.dart';
import 'package:flutter_project_r411/data/pokemon_data.dart';
import 'package:flutter_project_r411/store/pokemon_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_project_r411/api/api_helper.dart';

final collectionStoreProvider =
StateNotifierProvider<CollectionStore, CollectionStoreState>((ref) {
  final PokemonStore store = ref.read(pokemonStoreProvider.notifier);
  return CollectionStore(store);
});

// Cette classe permet de gérer le cache des équipes
class CollectionStore extends StateNotifier<CollectionStoreState> {
  CollectionStore(this.store) : super(CollectionStoreState.init());
  PokemonStore store;

  
}

class CollectionStoreState {
  // Variables
  final List<NbCardsData> collection;

  // Constructeur
  CollectionStoreState({
    this.collection = const [],
  });

  factory CollectionStoreState.init() {
    return CollectionStoreState();
  }

  // Permet de modifier le state
  CollectionStoreState copyWith({List<NbCardsData>? collection}) {
    return CollectionStoreState(
      collection: collection ?? this.collection,
    );
  }
}