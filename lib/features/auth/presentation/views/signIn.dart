import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/widgets/Or_line.dart';
import 'package:training_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:training_app/features/auth/presentation/widgets/custom_google_button.dart';
import 'package:training_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:training_app/generated/l10n.dart';

import '../widgets/CustomAppBar.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_text_after_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            hintText: "البريد الالكترونى",
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: "كلمة المرور",
            suffixIcon: Icon(Icons.visibility),
          ),
          SizedBox(
            height: 16,
          ),
          CustomText(),
          SizedBox(
            height: 33,
          ),
          CustomButton(text: "تسجيل الدخول"),
          SizedBox(
            height: 33,
          ),
          CustomTextAfterButton(),
          SizedBox(
            height: 29,
          ),
          OrLine(),
          SizedBox(
            height: 16,
          ),
          CustomGoogleButton(),
        ],
      ),
    );
  }
}
