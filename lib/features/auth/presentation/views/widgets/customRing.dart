import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Customring extends StatelessWidget {
  const Customring({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.green.shade100,
          child: FaIcon(
            FontAwesomeIcons.bell,
            color: Colors.green.shade800,
            size: 32,
          ),
        ),
        Positioned(
          top: 12,
          right: 26,
          child: Container(
            width: 8,
            height: 8,
            decoration: const BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
