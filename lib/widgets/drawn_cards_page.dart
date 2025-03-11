import 'package:flutter/material.dart';
import 'package:flutter_project_r411/widgets/pokemon_card.dart';
import 'package:flutter_project_r411/data/pokemon_data.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DrawnCardsPage extends StatelessWidget {
  final List<PokemonData> drawnCards;
  const DrawnCardsPage({super.key, required this.drawnCards});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cartes tirées")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var card in drawnCards) PokemonCard(cardSize: 300, data: card),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Retour"),
            ),
          ],
        ),
      ),
    );
  }
}
