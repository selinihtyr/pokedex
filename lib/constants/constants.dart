import 'package:flutter/material.dart';

class Constants {
  Constants._(); // this basically makes it so you can instantiate this class

  static const String title = "Pokedex";

  static const String pokeball = "images/pokeball.png";

  static TextStyle getTitleTextStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 48,
      fontWeight: FontWeight.bold,
    );
  }
}
