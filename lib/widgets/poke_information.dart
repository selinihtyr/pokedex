import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/constants/ui_helper.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeInformation({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.w)),
          ),
          child: Padding(
            padding: UIHelper.getIconPadding(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildInfoRow("Name", pokemon.name),
                buildInfoRow("Height", pokemon.height),
                buildInfoRow("Weight", pokemon.weight),
                buildInfoRow("Spawn Time", pokemon.spawnTime),
                buildInfoRow("Weaknesses", pokemon.weaknesses),
                buildInfoRow("Prev Evolution", pokemon.prevEvolution),
                buildInfoRow("Next Evolution", pokemon.nextEvolution)
              ]
            ),
          ),
        );

  }

  buildInfoRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: Constants.getPokeInfoLabelStyle(),),
        if(value is List && value.isNotEmpty)
          Text(value.join(", "), style: Constants.getPokeInfoTextStyle(),)
        else if(value == null)
          Text("Unknown")
        else
          Text(value.toString())
      ],
    );
  }
}
