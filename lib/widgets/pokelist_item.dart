import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.w),
      ),
      elevation: 4,
      shadowColor: Colors.white,
      color: Colors.red,
      child: Column(
        children: [
          Text(
            pokemon.name ?? "N/A", style: Constants.getPokemonNameTextStyle(),
          ),
          Chip(
            label: Text(
              pokemon.type![0], style: Constants.getTypeChipTextStyle(),
            ),
          ),
        ],
      )
    );
  }
}
