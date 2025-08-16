import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/widgets/custom_text_form_field.dart';

import '../widgets/CustomAppBar.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextFormField(
            hintText: "البريد الالكترونى",
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomTextFormField(
            hintText: "كلمة المرور",
            suffixIcon: Icon(Icons.visibility),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: TextButton(
              onPressed: () {},
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
          ),
        ],
      ),
    );
  }
}
