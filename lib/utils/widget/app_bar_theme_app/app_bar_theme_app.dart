import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login/constants/color_app.dart';

class AppBarThemeApp{
  AppBarThemeApp._();

  static AppBarTheme mLightAppBarThemeApp = const AppBarTheme(
    backgroundColor: mWhiteColor,
    titleTextStyle: TextStyle(
      color: mBlackColor,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
    iconTheme: IconThemeData(
      color: mBlackColor,
    ),
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: mWhiteColor,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ),);

  static AppBarTheme mDarkAppBarThemeApp = const AppBarTheme(
    backgroundColor: mSecondaryColor,
    titleTextStyle: TextStyle(
      color: mWhiteColor,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
    iconTheme: IconThemeData(
      color: mWhiteColor,
    ),
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: mSecondaryColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ),);
}