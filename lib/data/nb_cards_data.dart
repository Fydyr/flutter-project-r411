import 'package:flutter_project_r411/data/pokemon_data.dart';
import '../app_const.dart';

class NbCardsData{
  PokemonData? pokemon;
  int nb;

  NbCardsData({
    this.pokemon,
    this.nb = 0
  });
}