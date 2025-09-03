import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/views/widgets/customNavigationBar.dart';

import 'widgets/homeViewBody.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: Customnavigationbar(),
      body: Homeviewbody(),
    );
  }
}
