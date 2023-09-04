import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_login/constants/size_app.dart';
import 'package:flutter_login/features/auth/controller/login_controller.dart';
import 'package:flutter_login/features/auth/screen/widget/my_text_form_field_widget/my_text_form_field_widget.dart';
import 'package:get/get.dart';


class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({
    super.key,
    required this.textTheme,
    required this.size,
    required this.loginController,
  });

  final TextTheme textTheme;
  final Size size;
  final LoginController loginController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginController.mForkKey,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: mFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyTextFormFieldWidget(
              textTheme: textTheme,
              textController: loginController.mEmailController,
              prefixIcon: IconlyBroken.profile,
              hintText: 'Email Address',
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter this input field !!';
                }
              },
            ),
            Visibility(
              visible: loginController.isValidEmail,
              child: Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                child: const Text(
                  'Email in not Valid !! ',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 11,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: mFormHeight - 20,
            ),
            MyTextFormFieldWidget(
              textTheme: textTheme,
              textController: loginController.mPasswordController,
              prefixIcon: IconlyBroken.lock,
              hintText: 'Password',
              keyboardType: TextInputType.visiblePassword,
              obscureText: loginController.isPassword,
              suffixIcon: IconButton(
                  onPressed: () {
                    loginController.showPassword();
                  },
                  icon: Icon(loginController.isPassword
                      ? IconlyBroken.hide
                      : IconlyBroken.show)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter this input field !!';
                }
              },
            ),
            const SizedBox(height: mFormHeight - 20,),
            TextButton(
              onPressed: () {},
              child: const Text('ForgotPassword'),
            ),
            SizedBox(
              width: size.width,
              child: ElevatedButton(
                onPressed: () {
                  if(loginController.mForkKey.currentState!.validate()){
                    if(loginController.mEmailController.text.isEmail){}else{
                      loginController.onValidEmail();
                    }
                  }
                },
                child: Text('Login'.toUpperCase(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
