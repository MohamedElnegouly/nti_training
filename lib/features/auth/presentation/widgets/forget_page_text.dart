import 'package:flutter/material.dart';
import 'package:training_app/generated/l10n.dart';

class ForgetPageText extends StatelessWidget {
  const ForgetPageText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).warning,
      softWrap: true,
      style: const TextStyle(
        color: Color(0xFF616A6B) /* Grayscale-600 */,
        fontSize: 18,
        fontFamily: 'Cairo',
        fontWeight: FontWeight.w600,
        height: 1.40,
      ),
    );
  }
}
