import 'package:flutter/material.dart';
import 'package:flutter_login/constants/color_app.dart';

class TextThemeApp {
  TextThemeApp._();

  static TextTheme mLightTextTheme = const TextTheme(
    headlineMedium: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: mBlackColor),
    titleLarge: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: mBlackColor),
    bodyMedium: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: mBlackColor),
    labelMedium: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,
        fontSize: 12,
        color: mBlackColor),
  );

  static TextTheme mDarkTextTheme = const TextTheme(
    headlineMedium: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.bold,
        fontSize: 24,
        color: mWhiteColor),
    titleLarge: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: mWhiteColor),
    bodyMedium: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.normal,
        fontSize: 14,
        color: mWhiteColor),
    labelMedium: TextStyle(
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w300,
        fontSize: 12,
        color: mWhiteColor),
  );
}
