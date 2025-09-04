import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Customproduct extends StatelessWidget {
  const Customproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      //clipBehavior: Clip.none,
      children: [
        Container(
          width: 163,
          height: 214,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.grey.shade200,
                spreadRadius: 0,
                offset: const Offset(5, 5),
              ),
            ],
          ),
          child: Card(
            elevation: 5,
            //color: Colors.cyanAccent,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                // To make the elements align Start
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('lib/core/assets/stroparypng.png',
                      height: 120, width: 120),
                  const Text(
                    'بطيخ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      const Text(
                        '20جنية ',
                        style: TextStyle(
                          color: Color(0xFFF4A91F) /* Orange-500 */,
                          fontSize: 13,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Text(
                        '/الكيلو',
                        style: TextStyle(
                          color: Color(0xFFF8C76D) /* Orange-300 */,
                          fontSize: 13,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.w600,
                          height: 1.70,
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        width: 36,
                        height: 36,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 36,
                                height: 36,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFF1B5E37),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 7,
                              top: 8,
                              child: Container(
                                width: 20,
                                height: 20,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(),
                                child: const FaIcon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
