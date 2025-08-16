import 'package:flutter/material.dart';

AppBar customAppBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text(
          'تسجيل دخول',
          textAlign: TextAlign.end,
          style: TextStyle(
            color: Color(0xFF0C0D0D) /* Grayscale-950 */,
            fontSize: 19,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          width: 82,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            textDirection: TextDirection.rtl,
          ),
        ),
      ],
    ),
  );
}
