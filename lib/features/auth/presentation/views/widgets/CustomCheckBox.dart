import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:training_app/generated/l10n.dart';

class Customcheckbox extends StatefulWidget {
  final bool isChecked;              // الحالة اللى هتيجى من الأب
  final ValueChanged<bool>? onChanged; // كول باك للأب (اختيارى)

  const Customcheckbox({
    super.key,
    this.isChecked = false, // القيمة الافتراضية false
    this.onChanged,
  });

  @override
  State<Customcheckbox> createState() => _CustomcheckboxState();
}

class _CustomcheckboxState extends State<Customcheckbox> {
  late bool _isChecked; // حالة داخلية

  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked; // أول قيمة من الـ constructor
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          activeColor: const Color(0xFF1B5E37),
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value ?? false;
            });
            widget.onChanged?.call(_isChecked); // نرجع القيمة للأب
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
                    color: Color(0xFF949D9E),
                  ),
                ),
                TextSpan(
                  text: S.of(context).PrivacyPolicy,
                  style: const TextStyle(
                    color: Color(0xFF2D9F5D),
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Color(0xFF1B5E37),
                          content: Text(
                            'The Privacy Policy ',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      );
                    },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
