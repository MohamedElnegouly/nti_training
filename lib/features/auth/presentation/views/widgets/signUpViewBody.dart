import 'package:flutter/material.dart';
import 'package:training_app/core/widgets/SnackBarBuild.dart';
import 'package:training_app/features/auth/presentation/cubit/signup/signup_cubit.dart';
import 'package:training_app/features/auth/presentation/views/widgets/CustomCheckBox.dart';
import 'package:training_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:training_app/features/auth/presentation/views/widgets/custom_text_after_button.dart';
import 'package:training_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:training_app/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../signIn.dart';

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
  late bool change = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          CustomTextFormField(
            hintText: S.of(context).fullName,
            keyboardType: TextInputType.name,
            onsaved: (value) {
              name = value!;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onsaved: (value) {
              email = value!;
            },
            hintText: S.of(context).email,
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onsaved: (value) {
              password = value!;
            },
            hintText: S.of(context).password,
            keyboardType: TextInputType.visiblePassword,
            suffixIcon: IconButton(
              icon: Icon(change ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  change = !change;
                });
              },
            ),
            obscureText: change,
          ),
          const SizedBox(
            height: 16,
          ),
          const Customcheckbox(),
          const SizedBox(height: 16),
          CustomButton(
            text: S.of(context).ButtonSignUp,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                if (change) {
                  context.read<SignupCubit>().createUserWithEmailAndPassword(
                      name: name, email: email, password: password);
                } else {
                  snackBarbuild(context, "وافق على الشروط والاحكام");
                }
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
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
