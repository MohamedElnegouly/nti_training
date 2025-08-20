import 'package:flutter/material.dart';
import 'package:training_app/generated/l10n.dart';

class Customcheckbox extends StatefulWidget {
  const Customcheckbox({super.key});

  @override
  State<Customcheckbox> createState() => _CustomcheckboxState();
}

class _CustomcheckboxState extends State<Customcheckbox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (_) {
            setState(() {
              isChecked = !isChecked;
            });
          },
        ),
        const SizedBox(width: 5),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 15,
                fontFamily: 'Cairo',
                fontWeight: FontWeight.w600,
                height: 1.70,
              ),
              children: [
                TextSpan(
                  text: S.of(context).termsAndConditions,
                  style: const TextStyle(
                    color: Color(0xFF949D9E), // الرمادي
                  ),
                ),
                TextSpan(
                  text: S.of(context).PrivacyPolicy,
                  style: const TextStyle(
                    color: Color(0xFF2D9F5D), // الأخضر
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
