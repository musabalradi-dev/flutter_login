import 'package:flutter/material.dart';
import 'package:flutter_login/features/auth/screen/login_screen/login_screen.dart';
import 'package:flutter_login/utils/theme/theme_app.dart';
import 'package:get/get.dart';

void main(){
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      theme: ThemeApp.mLightThemeApp,
      darkTheme: ThemeApp.mDarkThemeApp,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    );
  }
}
