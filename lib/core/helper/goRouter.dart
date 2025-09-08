import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:training_app/core/service/shared_pref.dart';
import 'package:training_app/features/Home/presentation/homeView.dart';
import 'package:training_app/features/auth/presentation/views/signIn.dart';
import 'package:training_app/features/auth/presentation/views/signUp.dart';

import '../../features/Home/presentation/widgets/card_view.dart';
import '../../features/Home/presentation/widgets/category_view.dart';
import '../../features/Home/presentation/widgets/profile_view.dart';
import '../../features/auth/presentation/views/widgets/customNavigationBar.dart';

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

    /// 🟢 ShellRoute الأساسي
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          body: child, // 👈 بيتغير حسب الـ route
          bottomNavigationBar: const Customnavigationbar(),
        );
      },
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomeView(),
        ),
        GoRoute(
          path: '/categories',
          builder: (context, state) => const CategoryView(),
        ),
        GoRoute(
          path: '/cart',
          builder: (context, state) => const CardView(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfileView(),
        ),
      ],
    ),
  ],

  /// 🟡 الـ Redirect logic
  redirect: (context, state) {
    final isLoggedIn = SharedPref.getBool('isLoggedIn') ?? false;

    // مش مسجل → يسمح فقط signin & signup
    if (!isLoggedIn &&
        state.matchedLocation != '/signIn' &&
        state.matchedLocation != '/signUp') {
      return '/signIn';
    }

    // مسجل → يمنعه من signin/signup
    if (isLoggedIn &&
        (state.matchedLocation == '/signIn' ||
            state.matchedLocation == '/signUp')) {
      return '/home';
    }

    return null; // مفيش تحويل
  },
);
