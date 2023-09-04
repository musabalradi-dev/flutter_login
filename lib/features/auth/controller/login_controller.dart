import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{

  var mForkKey = GlobalKey<FormState>();
  var mEmailController = TextEditingController();
  var mPasswordController = TextEditingController();

  bool isPassword = true;
  bool isLoading = false;
  bool isValidEmail = false;

  void showPassword() {
    isPassword = !isPassword;
    update();
  }

  void onValidEmail() {
    isValidEmail = true;
    update();
  }

}