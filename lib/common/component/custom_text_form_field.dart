import 'package:flutter/material.dart';
import 'package:shopping_mall/common/const/colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: primaryColor,
      decoration: InputDecoration(),
    );
  }
}
