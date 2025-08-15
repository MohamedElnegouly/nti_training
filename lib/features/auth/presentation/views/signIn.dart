import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
    );
  }

  AppBar customAppBar() {
    return AppBar(
      title: const Text(
        'تسجيل دخول',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF0C0D0D) /* Grayscale-950 */,
          fontSize: 19,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
