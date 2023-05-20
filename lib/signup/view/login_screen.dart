import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping_mall/common/component/custom_text_form_field.dart';
import 'package:shopping_mall/common/layout/default_layout.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextFormField(
            hintText: '이메일을 입력해주세요',
          ),
          CustomTextFormField(
            hintText: '비밀번호를 입력해주세요',
            obscureText: true,
          ),
        ],
      ),
    );
  }
}
