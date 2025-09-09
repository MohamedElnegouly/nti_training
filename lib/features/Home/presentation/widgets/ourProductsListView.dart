import 'package:flutter/material.dart';

class Ourproductslistview extends StatelessWidget {
  const Ourproductslistview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120, // ارتفاع العنصر الواحد
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7, // عدد المنتجات
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 64,
                  height: 64,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFF3F5F7),
                    shape: OvalBorder(),
                  ),
                  child: const Center(
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage:
                          AssetImage('lib/core/assets/watermelon-png.jpg'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'بطيخ',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo',
                    height: 1.7,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
