import 'package:flutter/material.dart';
import 'package:flutter_login/constants/color_app.dart';
import 'package:flutter_login/constants/size_app.dart';

class OutlinedButtonThemeApp{
  OutlinedButtonThemeApp._();

  static OutlinedButtonThemeData mLightOutlinedButtonThemeApp =
  OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      foregroundColor: mSecondaryColor,
      side: const BorderSide(color: mSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: mButtonHeight),
    ),
  );

  static OutlinedButtonThemeData mDarkOutlinedButtonThemeApp =
  OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      foregroundColor: mWhiteColor,
      side: const BorderSide(color: mWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: mButtonHeight),
    ),
  );
}