import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping_mall/common/component/custom_text_form_field.dart';
import 'package:shopping_mall/common/const/colors.dart';
import 'package:shopping_mall/common/layout/default_layout.dart';
import 'package:dio/dio.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final dio = Dio();

    final emulatorIP = '10.0.2.2:3000'; //안드로이드 IP
    final simulatorIP = '127.0.0.1:3000'; //iOS IP

    final ip = Platform.isIOS ? simulatorIP : emulatorIP;

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
                onChagned: (String value) {
                  username = value;
                },
              ),
              const SizedBox(height: 16.0),
              CustomTextFormField(
                hintText: '비밀번호를 입력해주세요',
                onChagned: (String value) {
                  password = value;
                },
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () async {
                  final rawString = '$username:$password';
                  print(rawString);
                  Codec<String, String> stringToBase64 = utf8.fuse(base64);

                  String token = stringToBase64.encode(rawString);

                  final response = await dio.post(
                    'http://$ip/auth/login',
                    options: Options(
                      headers: {
                        'authorization': 'Basic $token',
                      },
                    ),
                  );
                },
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
