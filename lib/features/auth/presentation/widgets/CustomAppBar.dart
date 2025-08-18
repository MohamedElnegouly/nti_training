import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    centerTitle: true,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.arrow_back_ios,
        textDirection: TextDirection.rtl,
      ),
    ),
    title: const Text(
      'تسجيل دخول',
      //textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFF0C0D0D) /* Grayscale-950 */,
        fontSize: 19,
        fontFamily: 'Cairo',
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
