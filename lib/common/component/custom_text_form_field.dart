import 'package:flutter/material.dart';
import 'package:shopping_mall/common/const/colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final bool autofocus;
  final ValueChanged<String>? onChagned;

  const CustomTextFormField(
      {super.key,
      this.hintText,
      this.errorText,
      this.obscureText = false,
      this.autofocus = false,
      this.onChagned});

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: secondaryColor,
        width: 0.2,
      ),
    );

    return TextFormField(
      cursorColor: primaryColor,
      obscureText: obscureText,
      autofocus: autofocus,
      onChanged: onChagned,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        hintText: hintText,
        errorText: errorText,
        hintStyle: TextStyle(
          fontSize: 14.0,
        ),
        filled: true,
        fillColor: inputBackgroundColor,
        border: baseBorder,
        enabledBorder: baseBorder,
        focusedBorder: baseBorder.copyWith(
          borderSide: baseBorder.borderSide.copyWith(
            color: primaryColor,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
