import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeApi{
  static const String _url = 'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  static Future<List<Pokemonmodel>> getPokemonData() async {
    
    List<Pokemonmodel> _list = [];
    
    var result =await Dio().get(_url);
    var pokeList = jsonDecode(result.data)['pokemon'];

    if(pokeList is List){
      _list = pokeList.map((e) => Pokemonmodel.fromJson(e)).toList();
    }

    debugPrint(_list.first.toString());
    return _list;
  }
}