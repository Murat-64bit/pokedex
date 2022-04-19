import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeballImages extends StatelessWidget {
  final Pokemonmodel pokemon;

  const PokeballImages({required this.pokemon, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String pokeImage = "images/pokeball.png";
    return Stack(
      children: [
        Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              pokeImage,
              width: UIHelper.calculatePokeImageAndBallSize(),
              height: UIHelper.calculatePokeImageAndBallSize(),
              fit: BoxFit.fitHeight,
            )),
        Hero(
          tag: pokemon.id!,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: CachedNetworkImage(
              imageUrl: pokemon.img ?? "",
              width: UIHelper.calculatePokeImageAndBallSize(),
              height: UIHelper.calculatePokeImageAndBallSize(),
              fit: BoxFit.fitHeight,
              placeholder: (context,url)=> CircularProgressIndicator(color: Colors.red,),
            ),
          ),
        ),
      ],
    );
  }
}
