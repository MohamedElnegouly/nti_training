import 'package:flutter/material.dart';

class CustomTextAfterButton extends StatelessWidget {
  final String text1;
  final String text2;
  final void Function()? onTap;
  const CustomTextAfterButton({
    super.key,
    required this.text1,
    required this.text2,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w600,
            color: Color(0xFF949D9E), // Green1-600
          ),
        ),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: onTap,
          child: Text(
            text2,
            style: const TextStyle(
              fontSize: 14,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w600,
              color: Color(0xFF2D9F5D), // Green1-600
            ),
          ),
        ),
      ],
    );
  }
}
