import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/views/signIn.dart';
import 'package:training_app/features/auth/presentation/widgets/CustomAppBar.dart';
import 'package:training_app/features/auth/presentation/widgets/custom_button.dart';
import 'package:training_app/features/auth/presentation/widgets/custom_text_after_button.dart';
import 'package:training_app/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:training_app/generated/l10n.dart';
import '../widgets/CustomCheckBox.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  //see state this widget
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  //refused sign up button until all data is valid
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password, name;
  late bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(S.of(context).titleSignUp, () {
        Navigator.pop(context);
      }),
      body: Form(
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
      ),
    );
  }
}
