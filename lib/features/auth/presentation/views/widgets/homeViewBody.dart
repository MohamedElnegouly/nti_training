import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_app/features/auth/presentation/views/widgets/customHomeAppBar.dart';
import 'package:training_app/features/auth/presentation/views/widgets/custom_text_form_field.dart';

class Homeviewbody extends StatelessWidget {
  const Homeviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHomeAppBar(),
        const SizedBox(height: 16),
        CustomTextFormField(
          prefixIcon: const Icon(Icons.search),
          suffixIcon: Transform.translate(
            offset: const Offset(0, 10),
            child: const FaIcon(
              FontAwesomeIcons.sliders,
              color: Color(0xFF949D9E),
              size: 27,
            ),
          ),
          hintText: 'ابحث عن.......',
        ),
        
      ],
    );
  }
}
