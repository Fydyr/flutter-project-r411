import 'package:flutter/material.dart';
import 'app_store.dart';
import 'widgets/background.dart';
import 'widgets/button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyHomePage extends ConsumerWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {

    final AppStore store = ref.read(appStoreProvider.notifier);

    return Stack(
      children: [
        Background(),
        Center(
          child: Row(
            children: [
              Button(colorBackground: Colors.blueGrey, colorText: Colors.white, text: "getAll", height: 512, width: 128, onPressed: store.getValues),
              Button(colorBackground: Colors.blueGrey, colorText: Colors.white, text: "get1", height: 512, width: 128, onPressed: store.get1),
              Button(colorBackground: Colors.blueGrey, colorText: Colors.white, text: "get3", height: 512, width: 128, onPressed: store.get3),
            ],
          ),
        ),
      ],
    );
  }
}
