import 'package:flutter/material.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: const Row(
            children: [
              CircleAvatar(  
                radius: 22,
                backgroundImage: AssetImage('lib/core/assets/Avatar.png'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
