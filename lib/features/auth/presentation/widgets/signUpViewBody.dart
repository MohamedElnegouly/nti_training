import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/widgets/CustomCheckBox.dart';
import 'package:training_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:training_app/features/auth/presentation/widgets/custom_text_after_button.dart';
import 'package:training_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:training_app/generated/l10n.dart';

import '../views/signIn.dart';

class Signupviewbody extends StatefulWidget {
  const Signupviewbody({super.key});

  @override
  State<Signupviewbody> createState() => _SignupviewbodyState();
}

class _SignupviewbodyState extends State<Signupviewbody> {
    //see state this widget
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  //refused sign up button until all data is valid
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password, name;
  late bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return  Form(
        key: formKey,
        child: Column(
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
                icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              ),
              obscureText: isObscure,
            ),
            const SizedBox(
              height: 16,
            ),
            const Customcheckbox(),
            const SizedBox(height: 16),
            CustomButton(
              text: S.of(context).ButtonSignUp,
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            CustomTextAfterButton(
              text1: S.of(context).YouHaveAccount,
              text2: S.of(context).login,
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const SignIn()),
              ),
            ),
          ],
        ),
      );
  }
}