import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';

class AppTitle extends StatefulWidget {
  AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokeImgUrl = Constants.pokeball;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              Constants.title,
              style: Constants.getTitleTextStyle(),
            )),
        Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              pokeImgUrl,
              width: 100.w,
              height: 100.h,
            ))
      ],
    );
  }
}
