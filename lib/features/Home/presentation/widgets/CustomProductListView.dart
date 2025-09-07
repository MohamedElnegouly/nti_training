
import 'package:flutter/material.dart';

import '../../../auth/presentation/views/widgets/customProduct.dart';

class CustomProductListView extends StatelessWidget {
  const CustomProductListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, // عدد الأعمدة
      crossAxisSpacing: 1, // المسافة بين الأعمدة
      mainAxisSpacing: 20, // المسافة بين الصفوف
      padding: const EdgeInsets.all(10),
      children: List.generate(6, (index) {
        return const CustomProduct();
      }),
    );
  }
}
