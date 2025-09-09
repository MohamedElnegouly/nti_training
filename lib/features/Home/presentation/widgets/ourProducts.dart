import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Ourproducts extends StatelessWidget {
  const Ourproducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Text(
            'منتجاتنا',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFF0C0D0D),
              fontSize: 16,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
            ),
          ),
          const Spacer(),
          Container(
            width: 44,
            height: 31,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 1,
                  color: Color(0x66CACECE),
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.swap_vert,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
