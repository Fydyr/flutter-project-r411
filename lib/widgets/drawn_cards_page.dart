import 'package:flutter/material.dart';
import 'package:flutter_project_r411/widgets/pokemon_card.dart';
import 'package:flutter_project_r411/data/pokemon_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../store/pokemon_store.dart';

class DrawnCardsPage extends ConsumerWidget {
  final List<PokemonData> drawnCards;
  const DrawnCardsPage({super.key, required this.drawnCards});

  @override
  Widget build(BuildContext context, final WidgetRef ref) {
    final PokemonStore store = ref.watch(pokemonStoreProvider.notifier);
    final List<PokemonData> collection = store.getNLastCards(5);

    return Scaffold(
      appBar: AppBar(title: Text("Pokémons obtenues")),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Afficher deux cartes par ligne
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 3 / 4, // Ajuster la taille des cartes
        ),
        itemCount: collection.length,
        itemBuilder: (context, index) {
          final pokemon = collection[index];

          return GestureDetector(
            onTap: () => _showZoomDialog(context, pokemon),
            child: PokemonCard(cardSize: 250, data: pokemon),
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
              Image.network(pokemon.imageUrl, fit: BoxFit.cover, height: 300, width: 300),
              SizedBox(height: 10),
              Text(
                pokemon.name,
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
              Text(
                "Pokedex ID: ${pokemon.pokedexId}",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Text(
                "Points de vie: ${pokemon.lifePoints}",
                style: TextStyle(color: Colors.white, fontSize: 30),
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

