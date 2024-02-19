import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTitle extends StatefulWidget {
  AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokeImgUrl = "images/pokeball.png";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Align(alignment: Alignment.topLeft, child: Text("Pokedex")),
        Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              pokeImgUrl,
              width: 100,
              height: 100,
            ))
      ],
    );
  }
}
