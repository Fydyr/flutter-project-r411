import 'package:flutter/material.dart';
import 'package:flutter_project_r411/pokemon_data.dart';
import 'package:flutter_project_r411/widgets/pokemon_card.dart';
import 'app_store.dart';
import 'widgets/background.dart';
import 'widgets/button.dart';
import 'widgets/card_pack.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(final BuildContext context) {
    final AppStore store = ref.read(appStoreProvider.notifier);

    Future? f;

    return Stack(
      children: [
        AppBackground(name: "background_screen_title.jpg"),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(future: f, builder: (context, snap){


              if(snap.hasError){
                return PokemonCard(cardSize: 500, data: PokemonData());
              }

              if(!snap.hasData){
                return CircularProgressIndicator();
              }


              var data = PokemonData(
                name: snap.data['name'],
                pokedexId: snap.data['pokedexId'],
                typeId1: snap.data['typeId1'],
                typeIdWeakness: snap.data['typeIdWeakness'],
                attackId: snap.data['attackId'],
                lifePoints: snap.data['lifePoints'],
                size: snap.data['size'],
                weight: snap.data['weight'],
                url: snap.data['url']
              );

              return PokemonCard(cardSize: 500, data: data);
            }),
            SizedBox(height: 30),
            Row(
              children: [
                Button(
                    colorBackground: Colors.blueGrey,
                    colorText: Colors.white,
                    text: "getAll",
                    height: 70,
                    width: 128,
                    onPressed: store.getPokemonCards),
                Button(
                    colorBackground: Colors.blueGrey,
                    colorText: Colors.white,
                    text: "get1",
                    height: 70,
                    width: 128,
                    onPressed: () {setState(() {
                      f = store.getPokemonCardId(2);
                    });}),
                /*Button(
                    colorBackground: Colors.blueGrey,
                    colorText: Colors.white,
                    text: "get3",
                    height: 70,
                    width: 128,
                    onPressed: () {card = store.createPokemonCard(3);}),*/
              ],
            ),
          ],
        ),
      ],
    );
  }
}
