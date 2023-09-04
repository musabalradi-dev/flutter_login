import 'package:flutter/material.dart';
import 'package:flutter_login/constants/color_app.dart';
class InputDecorationThemeApp{
  InputDecorationThemeApp._();

  static InputDecorationTheme mLightInputDecorationThemeApp =
  const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: mSecondaryColor,
      floatingLabelStyle: TextStyle(color: mSecondaryColor),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: mSecondaryColor)));

  static InputDecorationTheme mDarkInputDecorationThemeApp =
  const InputDecorationTheme(
      border: OutlineInputBorder(),
      prefixIconColor: mWhiteColor,
      floatingLabelStyle: TextStyle(color: mPrimaryColor),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: mPrimaryColor)));
}