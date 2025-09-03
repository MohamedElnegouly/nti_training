import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:training_app/features/auth/presentation/cubit/signIn/sign_in_cubit.dart';
import 'package:training_app/features/auth/presentation/views/widgets/Or_line.dart';
import 'package:training_app/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:training_app/features/auth/presentation/views/widgets/custom_google_button.dart';
import 'package:training_app/features/auth/presentation/views/widgets/custom_text.dart';
import 'package:training_app/features/auth/presentation/views/widgets/custom_text_after_button.dart';
import 'package:training_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:training_app/generated/l10n.dart';

class Signinviewbody extends StatefulWidget {
  const Signinviewbody({super.key});

  @override
  State<Signinviewbody> createState() => _SigninviewbodyState();
}

class _SigninviewbodyState extends State<Signinviewbody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  //refused sign up button until all data is valid
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  late bool change = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 24,
            ),
            CustomTextFormField(
              hintText: S.of(context).email,
              keyboardType: TextInputType.emailAddress,
              onsaved: (value) {
                email = value!;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormField(
              hintText: S.of(context).password,
              onsaved: (value) {
                password = value!;
              },
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
            const CustomText(),
            const SizedBox(
              height: 33,
            ),
            CustomButton(
              text: S.of(context).login,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  context.read<SignInCubit>().signInWithEmailAndPassword(
                      email: email, password: password);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                }
              },
            ),
            const SizedBox(
              height: 33,
            ),
            CustomTextAfterButton(
              text1: S.of(context).notHaveAccount,
              text2: S.of(context).getOne,
              onTap: () => context.go('/signUp'),
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
