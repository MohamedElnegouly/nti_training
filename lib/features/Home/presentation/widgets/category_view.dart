import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:training_app/features/Home/presentation/widgets/CustomcategoryAppBar.dart';
import 'package:training_app/features/Home/presentation/widgets/custom_cubit_grid_view.dart';

import '../../../auth/presentation/views/widgets/bestSeller.dart';
import '../../../auth/presentation/views/widgets/custom_text_form_field.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
             const Customcategoryappbar(title: 'المنتجات',),
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
              const SizedBox(height: 20),
              const Bestseller(),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomProductCubitGrid(),
        ),
      ],
    );
  }
}
