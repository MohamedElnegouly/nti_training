import 'package:flutter/material.dart';

class Bestseller extends StatelessWidget {
  const Bestseller({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Text(
            'الأكثر مبيعًا',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFF0C0D0D) /* Grayscale-950 */,
              fontSize: 16,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
            ),
          ),
          Spacer(),
          Text(
            'المزيد',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF949D9E) /* Grayscale-400 */,
              fontSize: 13,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w400,
              height: 1.60,
            ),
          ),
        ],
      ),
    );
  }
}
