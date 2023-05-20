import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping_mall/common/component/custom_text_form_field.dart';
import 'package:shopping_mall/common/const/colors.dart';
import 'package:shopping_mall/common/layout/default_layout.dart';
import 'package:dio/dio.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dio = Dio();

    return DefaultLayout(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextFormField(
                hintText: '이메일을 입력해주세요',
              ),
              const SizedBox(height: 16.0),
              CustomTextFormField(
                hintText: '비밀번호를 입력해주세요',
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () async {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                ),
                child: Text('로그인'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                ),
                child: Text('회원가입'),
              )
            ],
          ),
        ),
      ),
    );
  }
}