
import 'package:go_router/go_router.dart';
import 'package:training_app/core/service/shared_pref.dart';
import 'package:training_app/features/auth/presentation/views/homeView.dart';
import 'package:training_app/features/auth/presentation/views/signIn.dart';
import 'package:training_app/features/auth/presentation/views/signUp.dart';


final GoRouter router = GoRouter(
  initialLocation: '/signIn', 
  routes: [
    GoRoute(
      path: '/signIn',
      builder: (context, state) => const SignIn(),
    ),
    GoRoute(
      path: '/signUp',
      builder: (context, state) => const Signup(),
    ),
     GoRoute(
      path: '/home',
      builder: (context, state) => const HomeView(),
    ),
  ],
  redirect: (context, state) {
  final isLoggedIn = SharedPref.getBool('isLoggedIn') ?? false;

  // لو مش مسجل → رجعه signin
  if (!isLoggedIn && state.matchedLocation != '/signIn') {
    return '/signIn';
  }

  // لو مسجل → امنعه من صفحة signin
  if (isLoggedIn && state.matchedLocation == '/signIn') {
    return '/home';
  }

  return null; // مفيش تحويل
},
);
