
import 'package:go_router/go_router.dart';
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
);
