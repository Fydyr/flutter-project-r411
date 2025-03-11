import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_project_r411/data/pokemon_data.dart';
import 'package:flutter_project_r411/widgets/background.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.cardSize,
    required this.data,
  });

  final double cardSize;
  final PokemonData data;

  Color _getRandomBackgroundColor() {
    final random = Random();
    int chance = random.nextInt(100); // Nombre entre 0 et 99

    if (chance < 2) {
      return Colors.blue;
    } else if (chance < 10) {
      // 10% de chance -> Fond rouge ultra rare (gradient)
      return Colors.red;
    } else if (chance < 35) {
      // 25% de chance (10% + 25% = 35%) -> Fond doré
      return Colors.yellow;
    } else {
      // 65% restant -> Fond normal
      return const Color(0xffecc86b);
    }
  }

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = _getRandomBackgroundColor();

    return CardBackground(
      height: cardSize,
      width: cardSize / 1.75,
      color: backgroundColor,
      gradient: backgroundColor == Colors.transparent
          ? LinearGradient(
        colors: [Colors.red, Colors.orange, Colors.yellow, Colors.green, Colors.blue, Colors.indigo, Colors.purple],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )
          : null,
      widget: Padding(
        padding: EdgeInsets.all(cardSize * 0.03),
        child: Column(
          children: [
            // --- En-tête de la carte (Nom et PV) ---
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    data.name,
                    style: TextStyle(fontSize: cardSize * 0.04, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "PV ${data.lifePoints}",
                  style: TextStyle(fontSize: cardSize * 0.04, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: cardSize * 0.02),
                Image.asset(
                  "images/types/Grass.png",
                  height: cardSize * 0.06,
                ),
              ],
            ),
            SizedBox(height: cardSize * 0.02),

            // --- Image du Pokémon ---
            Expanded(
              child: (data.imageUrl != "")
                  ? Image.network(data.imageUrl, fit: BoxFit.contain)
                  : Image.asset("images/images_cards/Ratata.png", fit: BoxFit.contain),
            ),
            SizedBox(height: cardSize * 0.02),

            // --- Bloc d'informations supplémentaires ---
            Container(
              padding: EdgeInsets.all(cardSize * 0.02),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Text(
                    "${data.name}",
                    style: TextStyle(fontSize: cardSize * 0.05, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: cardSize * 0.01),
                  Text(
                    "Morsure: ${data.attackId}",
                    style: TextStyle(fontSize: cardSize * 0.05),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
