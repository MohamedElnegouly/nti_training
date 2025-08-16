import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF1B5E37), // Green1-600
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: const Text(
          'تسجيل الدخول',
          style: TextStyle(
              fontSize: 16,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
      ),
    );
  }
}
