import 'package:flutter_project_r411/store/pokemon_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final collectionStoreProvider =
StateNotifierProvider<CollectionStore, CollectionStoreState>((ref) {
  final PokemonStore store = ref.read(pokemonStoreProvider.notifier);
  return CollectionStore(store);
});

// Cette classe permet de gérer le cache des équipes
class CollectionStore extends StateNotifier<CollectionStoreState> {
  CollectionStore(this.store) : super(CollectionStoreState.init());
  PokemonStore store;

  void addNCardsToCollection(int count) {
    Map<int, int> cards = state.collection;

    store.getNLastCards(count).forEach((pokemon) {
      if (cards.containsKey(pokemon.pokedexId)) {
        cards[pokemon.pokedexId] = cards[pokemon.pokedexId]! + 1;
      }
      else {
        cards[pokemon.pokedexId] = 1;
      }
    });

    state = state.copyWith(collection: cards);
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