import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: GestureDetector(
        onTap: () {
          debugPrint("نسيت كلمة المرور اضغطت عليها ✅");
        },
        child: const Text(
          'نسيت كلمة المرور؟',
          style: TextStyle(
            color: Color(0xFF2D9F5D) /* Green1-600 */,
            fontSize: 13,
            fontFamily: 'Cairo',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
