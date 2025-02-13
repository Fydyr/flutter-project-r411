import 'package:flutter/material.dart';
import 'package:flutter_project_r411/app_const.dart';
import 'package:flutter_project_r411/widgets/background.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.cardSize,
  });

  final double cardSize;
  final String name = AppConst.PokemonCardName;
  final int pokedexId = AppConst.PokemonPokedexId;
  final int typeId1 = AppConst.PokemonTypeId1;
  final int typeId2 = AppConst.PokemonTypeId2;
  final int typeIdWeakness = AppConst.PokemonTypeIdWeakness;
  final int attackId = AppConst.PokemonAttackId;
  final int lifePoints = AppConst.PokemonLifePoints;
  final double size = AppConst.PokemonSize;
  final double height = AppConst.PokemonHeight;
  final String url = AppConst.PokemonUrl;

  @override
  Widget build(BuildContext context) {
    return CardBackground(
      height: cardSize,
      width: cardSize/1.75,
      color: Color(0xffecc86b),
      widget: Center(
        child: SizedBox(
          height: cardSize - cardSize/30,
          width: cardSize/1.75 - cardSize/15,
          child: Column(
            children: [
              SizedBox(height: cardSize/40),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      name,
                      style: TextStyle(fontSize: cardSize/25),
                    ),
                  ),

                  Text(
                    "PV $lifePoints",
                    style: TextStyle(fontSize: cardSize/25),
                  )
                ],
              ),
              SizedBox(height: cardSize/40)
            ],
          ),
        ),
      )
    );
  }
}
