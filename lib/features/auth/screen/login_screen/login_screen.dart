import 'package:flutter/material.dart';
import 'package:flutter_login/constants/size_app.dart';
import 'package:flutter_login/features/auth/controller/login_controller.dart';
import 'package:flutter_login/features/auth/screen/login_screen/widget/login_footer_widget.dart';
import 'package:flutter_login/features/auth/screen/login_screen/widget/login_form_widget.dart';
import 'package:flutter_login/features/auth/screen/login_screen/widget/login_header_widget.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mSize = MediaQuery.of(context).size;
    var mTextTheme = Theme.of(context).textTheme;
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(mDefaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LoginHeaderWidget(size: mSize, textTheme: mTextTheme),
                  LoginFormWidget(
                    textTheme: mTextTheme,
                    size: mSize,
                    loginController: controller,
                  ),
                  LoginFooterWidget(
                      loginController: controller,
                      textTheme: mTextTheme, size: mSize),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
