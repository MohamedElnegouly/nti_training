import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/views/signUp.dart';
import 'package:training_app/features/auth/presentation/views/widgets/Or_line.dart';
import 'package:training_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:training_app/features/auth/presentation/views/widgets/custom_google_button.dart';
import 'package:training_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:training_app/generated/l10n.dart';

import 'widgets/CustomAppBar.dart';
import 'widgets/custom_text.dart';
import 'widgets/custom_text_after_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(S.of(context).title, () {}),
      body: SingleChildScrollView(
        child: Column(
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
              hintText: S.of(context).password,
              suffixIcon: IconButton(
                icon:
                    Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
              ),
              obscureText: _isObscure,
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomText(),
            const SizedBox(
              height: 33,
            ),
            CustomButton(
              text: S.of(context).login,
              onPressed: () {},
            ),
            const SizedBox(
              height: 33,
            ),
            CustomTextAfterButton(
              text1: S.of(context).notHaveAccount,
              text2: S.of(context).getOne,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Signup()),
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            const OrLine(),
            const SizedBox(
              height: 16,
            ),
            const CustomGoogleButton(),
          ],
        ),
      ),
    );
  }
}
