import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../Home/domin/entities/product_entity.dart';

class CustomProduct extends StatelessWidget {
  const CustomProduct({super.key, required this.productEntity});
   final ProductEntity productEntity;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(),
          child: AspectRatio(
            aspectRatio: 12 / 13,
            child: Card(
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // يخلي الزوايا حادة
              ),
              color: const Color(0xFFF3F5F7),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.04,
                  vertical: size.height * 0.015,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        'lib/core/assets/stroparypng.png',
                        height: size.height * 0.11,
                        width: size.width * 0.25,
                        //fit: BoxFit.contain,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'بطيخ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: size.width * 0.04,
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * 0.005),
                    Row(
                      children: [
                        Text(
                          '20جنية ',
                          style: TextStyle(
                            color: const Color(0xFFF4A91F),
                            fontSize: size.width * 0.035,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          '/الكيلو',
                          style: TextStyle(
                            color: const Color(0xFFF8C76D),
                            fontSize: size.width * 0.032,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Spacer(),
                        SizedBox(
                          width: size.width * 0.1,
                          height: size.width * 0.1,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Container(
                                  decoration: ShapeDecoration(
                                    color: const Color(0xFF1B5E37),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                  ),
                                ),
                              ),
                              Center(
                                child: FaIcon(
                                  FontAwesomeIcons.plus,
                                  color: Colors.white,
                                  size: size.width * 0.05,
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
        ),
        const Positioned(
          top: 12,
          right: 12,
          child: FaIcon(FontAwesomeIcons.heart),
        ),
      ],
    );
  }
}
