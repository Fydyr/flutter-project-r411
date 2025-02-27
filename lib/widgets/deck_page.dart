import 'package:flutter/material.dart';
import 'package:flutter_project_r411/pokemon_data.dart';
import 'package:flutter_project_r411/widgets/pokemon_card.dart';

class DeckPage extends StatelessWidget {
  DeckPage({super.key});

  // Simule une liste de Pokémon
  final List<PokemonData> deck = [
    PokemonData(name: "Pikachu", pokedexId: 25, typeId1: 3, typeIdWeakness: 2, attackId: 40, lifePoints: 60, size: 0.4, weight: 6, url: "https://example.com/pikachu.png"),
    PokemonData(name: "Mewtwo", pokedexId: 1, typeId1: 2, typeIdWeakness: 3, attackId: 50, lifePoints: 80, size: 0.7, weight: 7, url: "https://example.com/bulbizarre.png"),
    PokemonData(name: "Charizard", pokedexId: 4, typeId1: 1, typeIdWeakness: 2, attackId: 55, lifePoints: 75, size: 0.6, weight: 8, url: "https://example.com/salameche.png"),
  ];

  @override
  Widget build(BuildContext context) {
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
