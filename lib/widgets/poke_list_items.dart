import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/sabitler.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/pages/detail_page.dart';
import 'package:pokedex/widgets/poke_images.dart';

class PokeListItem extends StatelessWidget {
  final Pokemonmodel pokemon;
  const PokeListItem({required this.pokemon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: ((context) => DetailPage(pokemon: pokemon))));
      },
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.w)),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  pokemon.name ?? "N/A",
                  style: Constants.getPokemonTextStyle(),
                ),
              ),
              Chip(
                  label: Text(pokemon.type![0],
                      style: Constants.getChipTextStyle())),
              Expanded(flex: 2,child: PokeballImages(pokemon: pokemon))
            ],
          ),
        ),
      ),
    );
  }
}
