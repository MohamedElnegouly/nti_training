import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/views/signIn.dart';
import 'package:training_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  // this is the entry point in the app (root)
  runApp(const NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('en'),
      debugShowCheckedModeBanner: false,
      home: const SignIn(),
    );
  }
}
