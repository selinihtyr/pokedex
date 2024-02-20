import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._(); // this basically makes it so you can instantiate this class

  static const String title = "Pokedex";

  static const String pokeball = "images/pokeball.png";

  static TextStyle getTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(48),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getPokemonNameTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(30),
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle getTypeChipTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(20),
    );
  }

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1.5).sp;
    }
  }
}
