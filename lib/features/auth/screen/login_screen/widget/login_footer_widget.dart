import 'package:flutter/material.dart';
import 'package:flutter_login/constants/image_path_app.dart';
import 'package:flutter_login/constants/size_app.dart';
import 'package:flutter_login/features/auth/controller/login_controller.dart';
class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
    required this.loginController,
    required this.textTheme,
    required this.size,
  });

  final LoginController loginController;
  final TextTheme textTheme;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('OR',style: textTheme.bodyMedium,),
        const SizedBox(height: mFormHeight - 10,),
        SizedBox(
          width: size.width,
          child: OutlinedButton.icon(
            onPressed: (){},
            icon: Image.asset(mGoogleImage,width: 20,),
            label: const Text('Sign-up with google'),),
        ),
        const SizedBox(height: mFormHeight - 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Don\'t have an account ?',style: textTheme.bodyMedium,),
            const SizedBox(width: 5,),
            TextButton(onPressed: (){}, child: const Text('SignUp',),),
          ],
        ),
      ],
    );
  }
}