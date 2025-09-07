import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/service/getIt.dart';
import '../domin/repo/productRepo.dart';
import 'cubit/home_cubit_cubit.dart';
import 'widgets/home_main_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      // ..getProduct to call the function directly once the cubit is created
      create: (context)=>HomeCubitCubit(getIt<Productrepo>())..getProduct(),
      child:const HomemainView() ,
      );
  }
}
