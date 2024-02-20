import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/constants/ui_helper.dart';

class AppTitle extends StatefulWidget {
  AppTitle({super.key});

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
  String pokeImgUrl = Constants.pokeball;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Constants.title,
                  style: Constants.getTitleTextStyle(),
                )),
          ),
          Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                pokeImgUrl,
                width: ScreenUtil().orientation == Orientation.portrait
                    ? 0.2.sh
                    : 0.2.sw,
                fit: BoxFit.fitWidth,
              ))
        ],
      ),
    );
  }
}
