import 'package:flutter/material.dart';

AppBar customAppBar(String title , void Function()? onPressed ) {
  return AppBar(
    centerTitle: true,
    leading: IconButton(
      onPressed: onPressed,
      icon: const Icon(
        Icons.arrow_back_ios,
        textDirection: TextDirection.rtl,
      ),
    ),
    title:  Text(
      title,
      //textAlign: TextAlign.center,
      style:const TextStyle(
        color: Color(0xFF0C0D0D) /* Grayscale-950 */,
        fontSize: 19,
        fontFamily: 'Cairo',
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
