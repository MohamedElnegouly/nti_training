import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/views/widgets/CustomAppBar.dart';
import 'package:training_app/features/auth/presentation/views/widgets/signUpViewBody.dart';
import 'package:training_app/generated/l10n.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(S.of(context).titleSignUp, () {
        Navigator.pop(context);
      }),
      body:const Signupviewbody(),
    );
  }
}
