import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/views/forgetPassword.dart';
import 'package:training_app/generated/l10n.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Forgetpassword()));
        },
        child: Text(
          S.of(context).forget,
          style: const TextStyle(
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
