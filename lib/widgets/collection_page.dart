import 'package:flutter/material.dart';
import 'package:flutter_project_r411/pokemon_data.dart';
import 'package:flutter_project_r411/widgets/pokemon_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../pokemon_store.dart';

class CollectionPage extends ConsumerWidget {
  CollectionPage({super.key});

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
          final pokemon = deck[index];

          return GestureDetector(
            onTap: () => _showZoomDialog(context, pokemon),
            child: PokemonCard(cardSize: 200, data: pokemon),
          );
        },
      ),
    );
  }

  void _showZoomDialog(BuildContext context, PokemonData pokemon) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(pokemon.imageUrl, fit: BoxFit.cover),
              SizedBox(height: 10),
              Text(
                pokemon.name,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Pokedex ID: ${pokemon.pokedexId}",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Points de vie: ${pokemon.lifePoints}",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Fermer"),
              ),
            ],
          ),
        );
      },
    );
  }
}
