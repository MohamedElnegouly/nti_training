import 'package:flutter/material.dart';
import 'package:training_app/features/auth/presentation/views/widgets/customRing.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 60, left: 16, right: 16),
      child: SizedBox(
        height: 70,
        width: double.infinity,
        //color: Colors.amber,
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('lib/core/assets/Avatar.png'),
            ),
            SizedBox(width: 11),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'صباح الخير !..',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF949D9E),
                    fontSize: 16,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w400,
                    height: 1.40,
                  ),
                ),
                Text(
                  'أحمد مصطفي',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF0C0D0D),
                    fontSize: 16,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Spacer(),
            Customring(),
          ],
        ),
      ),
    );
  }
}
