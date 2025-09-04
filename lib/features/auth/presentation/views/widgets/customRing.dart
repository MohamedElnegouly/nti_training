import 'package:flutter/material.dart';

class Customring extends StatelessWidget {
  const Customring({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
              clipBehavior: Clip.none,
              children: [
                // الخلفية (الدائرة الفاتحة)
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.green.shade100,
                  child: Icon(
                    Icons.notifications_none,
                    color: Colors.green.shade800,
                    size: 35,
                  ),
                ),
                // الـ badge (الدائرة الحمراء الصغيرة)
                Positioned(
                  top: 15,
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
            ) ;
  }
}