import 'package:credpal/src/core/values/colors.dart';
import 'package:flutter/material.dart';

//the app theme
ThemeData appTheme = ThemeData.dark().copyWith(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: backgroundColor,
  textTheme: Typography.englishLike2018.apply(
    fontFamily: "Avenir",
    displayColor: white,
    bodyColor: white,
  ),
  primaryColor: deepGrey,
  appBarTheme: const AppBarTheme(
    color: Colors.transparent,
    foregroundColor: Colors.white,
    elevation: 0,
    centerTitle: false,
    shadowColor: Colors.transparent,
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
