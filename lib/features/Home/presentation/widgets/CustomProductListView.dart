import 'package:flutter/material.dart';
import '../../../auth/presentation/views/widgets/customProduct.dart';
import '../../domin/entities/product_entity.dart';

class CustomProductListView extends StatelessWidget {
  const CustomProductListView({
    super.key,
    required this.products,
  });

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true, // ياخد ارتفاعه على قد المحتوى
      physics: const NeverScrollableScrollPhysics(), // يمنع Scroll داخلي
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // عدد الأعمدة
        crossAxisSpacing: 10, // المسافة الأفقية
        mainAxisSpacing: 20, // المسافة الرأسية
        childAspectRatio: 0.7, // 👈 تحكم في نسبة العرض للطول
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return CustomProduct(productEntity: products[index]);
      },
    );
  }
}
