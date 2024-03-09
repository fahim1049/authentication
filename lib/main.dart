import 'package:authentication_app/ForgotPassword.dart';
import 'package:flutter/material.dart';

import 'SignInPage.dart';
import 'SignUpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Authenticator App',
      home: ForgotPassword(),
    );
  }
}
