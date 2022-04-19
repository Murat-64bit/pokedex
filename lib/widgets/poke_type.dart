import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/sabitler.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeTypeName extends StatelessWidget {
  final Pokemonmodel pokemon;
  const PokeTypeName({required this.pokemon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  pokemon.name ?? "",
                  style: Constants.getPokemonTextStyle(),
                ),
              ),
              Text(
                "#${pokemon.num}",
                style: Constants.getPokemonTextStyle(),
              )
            ],
          ),
          SizedBox(height: 0.02.sh),
          Chip(
              label: Text(pokemon.type?.join(",") ?? "",
                  style: Constants.getChipTextStyle())),
        ],
      ),
    );
  }
}
