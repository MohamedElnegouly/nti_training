import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:training_app/core/helper/goRouter.dart';
import 'package:training_app/core/service/shared_pref.dart';
import 'package:training_app/features/auth/Domin/entities/user_entity.dart';
import 'package:training_app/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/service/getIt.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 1. Firebase init
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setup();
  await SharedPref.init();

  // 3. Hive init لازم تيجي الأول
  await Hive.initFlutter();

  // 4. Register adapters
  Hive.registerAdapter(UserEntityAdapter());

  // 5. Open boxes
  var box = await Hive.openBox<UserEntity>('users');

  // 6. Run the app
  runApp(const NewApp());
}


class NewApp extends StatelessWidget {
  const NewApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: const Locale('ar'),
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
