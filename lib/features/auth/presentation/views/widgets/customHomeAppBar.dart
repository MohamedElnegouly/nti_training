import 'package:flutter/material.dart';
import 'package:training_app/core/helper/getUserData.dart';
import 'package:training_app/features/auth/Domin/entities/user_entity.dart';
import 'package:training_app/features/auth/presentation/views/widgets/customRing.dart';

class CustomHomeAppBar extends StatefulWidget {
  const CustomHomeAppBar({super.key});

  @override
  State<CustomHomeAppBar> createState() => _CustomHomeAppBarState();
}

class _CustomHomeAppBarState extends State<CustomHomeAppBar> {
UserEntity? user;

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  Future<void> loadUserData() async {
    var localUser = getDatafromLocal(); 
    setState(() {
      user = localUser;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 16, right: 16),
      child: SizedBox(
        height: 70,
        width: double.infinity,
        child: Row(
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('lib/core/assets/Avatar.png'),
            ),
            const SizedBox(width: 11),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start, // عشان النصوص تبقى يمين
              children: [
                const Text(
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
                  user!.name ,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Color(0xFF0C0D0D),
                    fontSize: 16,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Customring(),
          ],
        ),
      ),
    );
  }
}
