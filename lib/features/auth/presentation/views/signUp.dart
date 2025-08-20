import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/widgets/CustomAppBar.dart';
import 'package:training_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:training_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:training_app/generated/l10n.dart';

import '../widgets/CustomCheckBox.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(S.of(context).titleSignUp),
      body: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            hintText: S.of(context).fullName,
            keyboardType: TextInputType.name,
          ),
          const SizedBox(
            height: 16,
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
            keyboardType: TextInputType.visiblePassword,
            suffixIcon: IconButton(
              icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
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
          const Customcheckbox(),
          const SizedBox(height: 16),
          CustomButton(text: S.of(context).ButtonSignUp),
        ],
      ),
    );
  }
}
