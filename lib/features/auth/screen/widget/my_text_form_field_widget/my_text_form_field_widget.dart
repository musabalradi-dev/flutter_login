import 'package:flutter/material.dart';

class MyTextFormFieldWidget extends StatelessWidget {
  const MyTextFormFieldWidget({
    super.key,
    required this.textTheme,
    required this.textController,
    required this.prefixIcon,
    this.suffixIcon,
    required this.hintText,
    required this.keyboardType,
    this.obscureText = false,
    this.maxLength,
    required this.validator,
  });

  final TextTheme textTheme;
  final TextEditingController textController;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final int? maxLength;
  final Function validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: textTheme.bodyMedium,
        border: const OutlineInputBorder(),
      ),
      maxLength: maxLength,
      maxLines: 1,
      obscureText: obscureText,
      keyboardType: keyboardType,
      validator: (value) {
        return validator(value);
      },
    );
  }
}
