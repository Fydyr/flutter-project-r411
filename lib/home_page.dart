import 'package:flutter/material.dart';
import 'package:flutter_project_r411/widgets/pokemon_card.dart';
import 'app_store.dart';
import 'widgets/background.dart';
import 'widgets/button.dart';
import 'widgets/card_pack.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {

    final AppStore store = ref.read(appStoreProvider.notifier);

    return Stack(
      children: [
        AppBackground(name: "background_screen_title.jpg"),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PokemonCard(cardSize: 500),
            SizedBox(height: 30),
            Row(
              children: [
                Button(colorBackground: Colors.blueGrey, colorText: Colors.white, text: "getAll", height: 70, width: 128, onPressed: store.getPokemonCards),
                Button(colorBackground: Colors.blueGrey, colorText: Colors.white, text: "get1", height: 70, width: 128, onPressed: ()=>{store.getPokemonCardId(1)}),
                Button(colorBackground: Colors.blueGrey, colorText: Colors.white, text: "get3", height: 70, width: 128, onPressed: ()=>{store.getPokemonCardId(3)}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
