import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';

import '../widgets/poke_name_type.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;

  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getIconPadding(),
              child: IconButton(
                  iconSize: 24.w
                  ,
                  onPressed: (){
                Navigator.of(context).pop();
              }, icon: const Icon(Icons.arrow_back)),
            ),
            PokeNameType(pokemon: pokemon),
          ]
        ),
        ),
    );
  }
}
