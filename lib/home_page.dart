import 'package:flutter/material.dart';
import 'package:flutter_project_r411/data/pokemon_data.dart';
import 'package:flutter_project_r411/widgets/pokemon_card.dart';
import 'store/pokemon_store.dart';
import 'widgets/background.dart';
import 'widgets/button.dart';
import 'package:flutter_project_r411/widgets/collection_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_project_r411/widgets/drawn_cards_page.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final PokemonStore store = ref.read(pokemonStoreProvider.notifier);
    final PokemonStoreState state = ref.watch(pokemonStoreProvider);

    return Stack(
      children: [
        AppBackground(name: "background_screen_title.jpg"),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (state.pokemons.isNotEmpty) PokemonCard(cardSize: 500, data: state.pokemons.last),
            SizedBox(height: 30),

            Row(
              children: [
                Button(
                  colorBackground: Colors.blueGrey,
                  colorText: Colors.white,
                  text: "Collection",
                  height: 70,
                  width: 170,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CollectionPage()),
                    );
                  },
                ),
                Button(
                  colorBackground: Colors.blueGrey,
                  colorText: Colors.white,
                  text: "Tirer 5 cartes",
                  height: 70,
                  width: 170,
                  onPressed: () {
                    store.getRandomPokemonCards(5);
                    final List<PokemonData> drawnCards = store.getNLastCards(5);

                    print("Cartes tirées : ${drawnCards.map((p) => p.name).toList()}"); // Debug

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DrawnCardsPage(drawnCards: drawnCards),
                      ),
                    );
                  }
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
