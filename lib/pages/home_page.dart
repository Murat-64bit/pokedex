import 'package:flutter/material.dart';
import 'package:pokedex/widgets/pokemon_list_widget.dart';
import 'package:pokedex/widgets/up_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: OrientationBuilder(
      builder: (context, orientation) => Column(
        children: [
          UpTitle(),
          Expanded(child: PokeWidget()),
        ],
      ),
    ));
  }
}
