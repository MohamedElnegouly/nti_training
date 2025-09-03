import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/views/widgets/customNavigationBar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const Customnavigationbar(),
      body: Container(),
    );
  }
}
