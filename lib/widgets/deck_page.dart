import 'package:flutter/material.dart';
import 'package:flutter_project_r411/pokemon_data.dart';
import 'package:flutter_project_r411/widgets/pokemon_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../pokemon_store.dart';

class DeckPage extends ConsumerWidget {
  DeckPage({super.key});

  // Simule une liste de Pokémon
  @override
  Widget build(BuildContext context, final WidgetRef ref) {
    final PokemonStoreState state = ref.watch(pokemonStoreProvider);
    final List<PokemonData> deck = state.pokemons;
    return Scaffold(
      appBar: AppBar(title: Text("Deck Pokémon")),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Afficher deux cartes par ligne
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 4, // Ajuster la taille des cartes
        ),
        itemCount: deck.length,
        itemBuilder: (context, index) {
          return PokemonCard(cardSize: 200, data: deck[index]);
        },
      ),
    );
  }
}
