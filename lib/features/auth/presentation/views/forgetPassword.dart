import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:training_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:training_app/generated/l10n.dart';
import 'widgets/CustomAppBar.dart';
import 'widgets/forget_page_text.dart';

class Forgetpassword extends StatelessWidget {
  const Forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(S.of(context).ForgetPasswordTitle, () {
        Navigator.pop(context);
      }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const ForgetPageText(),
            const SizedBox(
              height: 30,
            ),
            CustomTextFormField(
              hintText: S.of(context).PhoneNumber,
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
                text: S.of(context).ForgetPasswordButton, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
