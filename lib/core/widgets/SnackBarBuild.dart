import 'package:flutter/material.dart';

void snackBarbuild(BuildContext context, String messege) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: const Color(0xFF1B5E37),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 1),
      content: Text(messege),
    ),
  );
}