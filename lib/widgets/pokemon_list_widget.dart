import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/services/pokdex_api.dart';
import 'package:pokedex/widgets/poke_list_items.dart';

class PokeWidget extends StatefulWidget {
  PokeWidget({Key? key}) : super(key: key);

  @override
  State<PokeWidget> createState() => _PokeWidgetState();
}

class _PokeWidgetState extends State<PokeWidget> {
  late Future<List<Pokemonmodel>> _pokemonList;

  @override
  void initState() {
    _pokemonList = PokeApi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Pokemonmodel>>(
        future: _pokemonList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Pokemonmodel> _listem = snapshot.data!;
            return GridView.builder(
                itemCount: _listem.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        ScreenUtil().orientation == Orientation.portrait
                            ? 2
                            : 3),
                itemBuilder: (context, index) =>
                    PokeListItem(pokemon: _listem[index]));
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Hata çıktı"),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
/*ListView.builder(
                itemCount: _listem.length,
                itemBuilder: (context, index) {
                  var oankiPokemon = _listem[index];
                  return PokeListItem(pokemon: oankiPokemon);
                });*/