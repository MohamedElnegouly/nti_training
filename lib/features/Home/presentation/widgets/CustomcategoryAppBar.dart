import 'package:flutter/material.dart';

import '../../../auth/presentation/views/widgets/customRing.dart';

class Customcategoryappbar extends StatelessWidget {
  const Customcategoryappbar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 16, right: 16),
      child: SizedBox(
        height: 70,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF0C0D0D),
                fontSize: 19,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(width: MediaQuery.of(context).size.width * .215),
            const Customring(),
          ],
        ),
      ),
    );
  }
}
