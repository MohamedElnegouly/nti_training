import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:training_app/features/auth/presentation/widgets/custom_text_form_field.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            hintText: "البريد الالكترونى",
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
          CustomButton(),
          SizedBox(
            height: 33,
          ),
          CustomTextAfterButton()
        ],
      ),
    );
  }
}
