import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/views/widgets/customHomeAppBar.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child:Column(
        children: [
          CustomHomeAppBar(),
        ],
      ),
    );
  }
}
