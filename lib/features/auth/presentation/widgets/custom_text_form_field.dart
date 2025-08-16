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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),

      //margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
        ),
        keyboardType: keyboardType,
      ),
    );
  }

  OutlineInputBorder borderDecoration() => OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color(0xFFE6E9E9), // Grayscale-950
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(4),
      );
}
