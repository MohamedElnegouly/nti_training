import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:training_app/features/auth/Domin/repo/auth_repo.dart';
import '../../../Domin/entities/user_entity.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.authRepo) : super(SignupInitial());
  final AuthRepo authRepo;
  //return type is void always after finish repo
  Future<void> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    emit(SignupLoading());
    var result = await authRepo.createUserWithEmailAndPassword(
        email: email, password: password, name: name);
    result.fold((failure) => emit(SignupFailure(failure.message)),
        (userEntity) => emit(SignupSuccess(userEntity)));
  }
}
