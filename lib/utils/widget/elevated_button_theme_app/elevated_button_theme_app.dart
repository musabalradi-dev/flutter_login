import 'package:flutter/material.dart';
import 'package:flutter_login/constants/color_app.dart';
import 'package:flutter_login/constants/size_app.dart';

class ElevatedButtonThemeApp {
  ElevatedButtonThemeApp._();

  static ElevatedButtonThemeData mLightElevatedButtonThemeApp =
  ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      foregroundColor: mWhiteColor,
      backgroundColor: mSecondaryColor,
      side: const BorderSide(color: mSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: mButtonHeight),
    ),
  );

  static ElevatedButtonThemeData mDarkElevatedButtonThemeApp =
  ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      foregroundColor: mSecondaryColor,
      backgroundColor: mWhiteColor,
      side: const BorderSide(color: mSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: mButtonHeight),
    ),
  );
}
