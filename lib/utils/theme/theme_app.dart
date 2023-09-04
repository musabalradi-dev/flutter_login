import 'package:flutter/material.dart';
import 'package:flutter_login/constants/color_app.dart';
import 'package:flutter_login/utils/widget/app_bar_theme_app/app_bar_theme_app.dart';
import 'package:flutter_login/utils/widget/elevated_button_theme_app/elevated_button_theme_app.dart';
import 'package:flutter_login/utils/widget/icon_theme_app/icon_theme_app.dart';
import 'package:flutter_login/utils/widget/input_decoration_theme_app/input_decoration_theme_app.dart';
import 'package:flutter_login/utils/widget/outlined_button_theme_app/outlined_button_theme_app.dart';
import 'package:flutter_login/utils/widget/text_theme_app/text_theme_app.dart';

class ThemeApp {
  ThemeApp._();

  static ThemeData mLightThemeApp = ThemeData(
    fontFamily: 'Poppins',

    brightness: Brightness.light,
    primarySwatch: mPrimarySwatch,
    scaffoldBackgroundColor: mWhiteColor,
    iconTheme: IconThemeApp.mLightIconThemeAppApp,
    textTheme: TextThemeApp.mLightTextTheme,
    appBarTheme: AppBarThemeApp.mLightAppBarThemeApp,
    elevatedButtonTheme: ElevatedButtonThemeApp.mLightElevatedButtonThemeApp,
    outlinedButtonTheme: OutlinedButtonThemeApp.mLightOutlinedButtonThemeApp,
    inputDecorationTheme: InputDecorationThemeApp.mLightInputDecorationThemeApp,
  );

  static ThemeData mDarkThemeApp = ThemeData(
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primarySwatch: mPrimarySwatch,
    scaffoldBackgroundColor: mSecondaryColor,
    iconTheme: IconThemeApp.mDarkIconThemeAppApp,
    textTheme: TextThemeApp.mDarkTextTheme,
    appBarTheme: AppBarThemeApp.mDarkAppBarThemeApp,
    elevatedButtonTheme: ElevatedButtonThemeApp.mDarkElevatedButtonThemeApp,
    outlinedButtonTheme: OutlinedButtonThemeApp.mDarkOutlinedButtonThemeApp,
    inputDecorationTheme: InputDecorationThemeApp.mDarkInputDecorationThemeApp,
  );
}
