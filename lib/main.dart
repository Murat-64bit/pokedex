import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/pages/home_page.dart';
import 'package:pokedex/services/pokdex_api.dart';
import 'package:pokedex/widgets/up_title.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PokeApi.getPokemonData();

    return ScreenUtilInit(
        designSize: Size(411, 731),
        builder: (_) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            textTheme: GoogleFonts.latoTextTheme()
          ),
          title: 'Pokedex',
          home: HomePage(),
    ));
  }
}
