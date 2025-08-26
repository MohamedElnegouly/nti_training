import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:training_app/features/auth/Domin/entities/user_entity.dart';
import 'package:training_app/features/auth/Domin/repo/auth_repo.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    emit(SignInLoading());
    var result = await authRepo.signInWithEmailAndPassword(
        email: email, password: password);
    result.fold(
      (failure)=>emit(SignInFailure(errMessage: failure.message))
    , (userEntity)=>emit(SignInSuccess(userEntity: userEntity)));
  }
}
