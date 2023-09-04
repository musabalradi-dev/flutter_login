import 'package:flutter/material.dart';
import 'package:flutter_login/constants/image_path_app.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
    required this.textTheme,
  });

  final Size size;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          mWelcomeLoginImage,
          height: size.height * 0.2,
        ),
        Text(
          'Welcome Back',
          style: textTheme.headlineMedium,
        ),
        Text(
          'Make it work, make it right, make it fast.',
          style: textTheme.bodyMedium,
        ),
      ],
    );
  }
}