import 'package:flutter/material.dart';
import 'package:flutter_project_r411/app_const.dart';
import 'package:flutter_project_r411/widgets/background.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.cardSize,
  });

  final double cardSize;

  @override
  Widget build(BuildContext context) {
    final String name = AppConst.PokemonCardName;
    final int pokedexId = AppConst.PokemonPokedexId;
    final int typeId1 = AppConst.PokemonTypeId1;
    final int typeId2 = AppConst.PokemonTypeId2;
    final int typeIdWeakness = AppConst.PokemonTypeIdWeakness;
    final int attackId = AppConst.PokemonAttackId;
    final int lifePoints = AppConst.PokemonLifePoints;
    final double size = AppConst.PokemonSize;
    final double weight = AppConst.PokemonWeight;
    final String url = AppConst.PokemonUrl;

    return CardBackground(
      height: cardSize,
      width: cardSize / 1.75,
      color: const Color(0xffecc86b),
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
                    name,
                    style: TextStyle(fontSize: cardSize * 0.04, fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "PV $lifePoints",
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
              child: Image.network(url, fit: BoxFit.contain),
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
                    "$name",
                    style: TextStyle(fontSize: cardSize * 0.05, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: cardSize * 0.01),
                  Text(
                    "Morsure: $attackId",
                    style: TextStyle(fontSize: cardSize * 0.040),
                  ),
                  Text(
                    "Tornade: $attackId",
                    style: TextStyle(fontSize: cardSize * 0.040),
                  ),
                  SizedBox(height: cardSize * 0.25),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
