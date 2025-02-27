import 'package:flutter/material.dart';
import 'package:flutter_project_r411/pokemon_data.dart';
import 'package:flutter_project_r411/widgets/pokemon_card.dart';
import 'pokemon_store.dart';
import 'widgets/background.dart';
import 'widgets/button.dart';
import 'widgets/card_pack.dart';
import 'package:flutter_project_r411/widgets/deck_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final PokemonStore store = ref.read(pokemonStoreProvider.notifier);
    final PokemonStoreState state = ref.watch(pokemonStoreProvider);
    store.getPokemonCards();

    return Stack(
      children: [
        AppBackground(name: "background_screen_title.jpg"),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PokemonCard(cardSize: 500, data: (state.pokemons.isNotEmpty) ? state.pokemons.last : PokemonData()),
            SizedBox(height: 30),

            Row(
              children: [
                Button(
                  colorBackground: Colors.blueGrey,
                  colorText: Colors.white,
                  text: "Deck",
                  height: 70,
                  width: 128,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DeckPage()),
                    );
                  },
                ),
                Button(
                    colorBackground: Colors.blueGrey,
                    colorText: Colors.white,
                    text: "get1",
                    height: 70,
                    width: 128,
                    onPressed: () {store.getPokemonCardId(1);}),
                Button(
                  colorBackground: Colors.blueGrey,
                  colorText: Colors.white,
                  text: "Tirer 5 cartes",
                  height: 70,
                  width: 160,
                  onPressed: () {
                    store.getRandomPokemonCards(5);}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
