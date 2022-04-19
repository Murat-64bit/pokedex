
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants{
  Constants._();
  
  static const String title="Pokadex";
  static TextStyle getTitleFontStyle(){
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(40),
    );
  }
  static TextStyle getPokemonTextStyle(){
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(30),
    );
  }
  static TextStyle getChipTextStyle(){
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.normal,
      fontSize: _calculateFontSize(20),
    );
  }

  static _calculateFontSize(int size){
    if(ScreenUtil().orientation== Orientation.portrait){
      return size.sp;
    }else {
      return (size*0.5).sp;
    }
  }

  static getPokeInfoTextStyle() {
     return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.normal,
      fontSize: _calculateFontSize(16),
    );
  }
  static getPokeInfoTitleTextStyle() {
     return TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(16),
    );
  }
}