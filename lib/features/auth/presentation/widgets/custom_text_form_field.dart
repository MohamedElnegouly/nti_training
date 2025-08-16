import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Key? fieldKey;
  final void Function(String)? onChanged;

  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  const CustomTextFormField({
    super.key,
    this.fieldKey,
    this.onChanged,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: TextFormField(
        key: fieldKey,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: borderDecoration(),
          focusedBorder: borderDecoration(),
          enabledBorder: borderDecoration(),
          isDense: false,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 16,
          ),
        ),
        keyboardType: keyboardType,
      ),
    );
  }

  OutlineInputBorder borderDecoration() => OutlineInputBorder(
        borderSide: const BorderSide(
          width: 1,
          strokeAlign: BorderSide.strokeAlignCenter,
          color: Color(0xFFE6E9E9),
        ),
        borderRadius: BorderRadius.circular(4),
      );
}
