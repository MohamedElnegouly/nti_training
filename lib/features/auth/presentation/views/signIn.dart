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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            hintText: S.of(context).email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText:S.of(context).password,
            suffixIcon: const Icon(Icons.visibility),
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomText(),
         const SizedBox(
            height: 33,
          ),
          CustomButton(text: S.of(context).login),
         const SizedBox(
            height: 33,
          ),
         const CustomTextAfterButton(),
          const SizedBox(
            height: 29,
          ),
         const  OrLine(),
          const SizedBox(
            height: 16,
          ),
         const  CustomGoogleButton(),
        ],
      ),
    );
  }
}
