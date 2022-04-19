import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/sabitler.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeInfo extends StatelessWidget {
  final Pokemonmodel pokemon;
  const PokeInfo({required this.pokemon,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10.w)),color: Colors.white),
      child: Padding(
        padding: UIHelper.getDefaultPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          buildInfoRow("Name", pokemon.name),
          buildInfoRow("Height", pokemon.height),
          buildInfoRow("Weight", pokemon.weight),
          buildInfoRow("Spawn Time", pokemon.spawnTime),
          buildInfoRow("Weakness", pokemon.weaknesses),
          buildInfoRow("Pre Evulution", pokemon.prevEvolution),
          buildInfoRow("Next Evulution", pokemon.nextEvolution),
        ],),
      ),
    );
  }
}

buildInfoRow(String label, dynamic value){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(label,style: Constants.getPokeInfoTitleTextStyle(),),
      if (value is List && value.isNotEmpty) 
      Text(value.join(' , '),style: Constants.getPokeInfoTextStyle())
      else if(value == null)
      Text("Not available")
      else Text(value)
    ],
  );
}