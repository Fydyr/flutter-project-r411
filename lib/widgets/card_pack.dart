import 'dart:math';
import 'package:flutter/material.dart';

class CardPack extends StatelessWidget {
  const CardPack({super.key});

  @override
  Widget build(BuildContext context) {
    final Random random = Random();
    String currentCard = "Appuie pour ouvrir un paquet";

    // Fonction pour tirer une carte avec les probabilités demandées
    String drawCard() {
      int chance = random.nextInt(100); // Nombre entre 0 et 99

      if (chance < 60) {
        return "Gris";
      } else if (chance < 80) {
        return "Vert";
      } else if (chance < 90) {
        return "Bleu";
      } else if (chance < 97) {
        return "Rouge";
      } else {
        return "Jaune";
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Ouverture de Pack")),
      body: StatefulBuilder(
        builder: (context, setState) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(currentCard, style: const TextStyle(fontSize: 24)),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      currentCard = "Carte tirée : ${drawCard()}";
                    });
                  },
                  child: const Text("Ouvrir un paquet"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

