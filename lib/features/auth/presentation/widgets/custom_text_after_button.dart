import 'package:flutter/material.dart';

class CustomTextAfterButton extends StatelessWidget {
  const CustomTextAfterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'لا تمتلك حساب ؟',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w600,
            color: Color(0xFF949D9E), // Green1-600
          ),
        ),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: () {
            debugPrint("اضغطت على انشاء حساب ✅");
          },
          child: const Text(
            'قم بإنشاء حساب',
            style: TextStyle(
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
