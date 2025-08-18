import 'package:flutter/material.dart';

class OrLine extends StatelessWidget {
  const OrLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.9, // 90% من العرض
            height: MediaQuery.of(context).size.height * 0.06, // 6% من الطول
            child: Stack(
              children: [
                // الخط الرمادي
                Positioned(
                  left: 0,
                  top: MediaQuery.of(context).size.height * 0.03,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: const ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: Color(0xFFDCDEDE),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.418,
                  top: MediaQuery.of(context).size.height * 0.01,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.09,
                    height: MediaQuery.of(context).size.height * 0.04,
                    decoration: const BoxDecoration(color: Colors.white),
                  ),
                ),
                // النص "أو"
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.44,
                  top: MediaQuery.of(context).size.height * 0.02,
                  child: const Text(
                    'أو',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF0C0D0D),
                      fontSize: 16,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w600,
                      height: 1.4,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
