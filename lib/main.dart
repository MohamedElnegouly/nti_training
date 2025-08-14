import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/views/signIn.dart';

void main() {
  // this is the entry point in the app (root)
  runApp(const NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
