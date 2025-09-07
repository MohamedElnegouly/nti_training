import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:training_app/features/Home/domin/entities/product_entity.dart';
import 'package:training_app/features/Home/domin/repo/productRepo.dart';
part 'home_cubit_state.dart';

class HomeCubitCubit extends Cubit<HomeCubitState> {
  HomeCubitCubit(this.productrepo) : super(HomeCubitInitial());
  final Productrepo productrepo;
  Future<void> getProduct() async {
    emit(HomeCubitLoading());
    var result = await productrepo.getproduct();
    result.fold(
      (failure) => emit(HomeCubitFailure(failure.message)), 
      (products)=> emit(HomeCubitSuccess(products)),
      );
  }
}
