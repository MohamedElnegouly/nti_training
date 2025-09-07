import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:training_app/features/Home/domin/entities/product_entity.dart';
import 'package:training_app/features/Home/presentation/cubit/home_cubit_cubit.dart';
import 'package:training_app/features/Home/presentation/widgets/CustomProductListView.dart';

class CustomProductCubitGrid extends StatelessWidget {
  const CustomProductCubitGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubitCubit, HomeCubitState>(
      builder: (context, state) {
        if (state is HomeCubitSuccess) {
          return CustomProductListView(products: state.products);
        } else if (state is HomeCubitFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else if (state is HomeCubitLoading) {
          // Show skeletons while Loading
          return Skeletonizer(
            enabled: true,
            child: CustomProductListView(
              products: List.generate(
                6, // عدد العناصر اللي عايز يظهرها كـ skeleton
                (index) => ProductEntity(
                  id: index,
                  title: '',
                  price: 0,
                  image: '',
                  category: '',
                  description: '',
                ),
              ),
            ),
          );
        } else {
          return const Center(child: Text('No data yet'));
        }
      },
    );
  }
}
