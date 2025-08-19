import 'package:flutter/material.dart';
import 'package:training_app/generated/l10n.dart';

class CustomTextAfterButton extends StatelessWidget {
  const CustomTextAfterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.of(context).notHaveAccount,
          style: const TextStyle(
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
          child: Text(
            S.of(context).getOne,
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
