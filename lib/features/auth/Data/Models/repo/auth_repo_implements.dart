import 'package:dartz/dartz.dart';
import 'package:training_app/core/errors/custom_Exception.dart';
import 'package:training_app/core/errors/failure.dart';
import 'package:training_app/core/service/firebase_auth.dart';
import 'package:training_app/features/auth/Data/Models/user_model.dart';
import 'package:training_app/features/auth/Domin/entities/user_entity.dart';
import 'package:training_app/features/auth/Domin/repo/auth_repo.dart';

class AuthRepoImplements implements AuthRepo {
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword (
      {required String email, required String password}) async{
    try {
      var firebaseAuthService = FirebaseAuthService();
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
          emailAddress: email, password: password);
      UserModel userModel = UserModel.fromfirebaseUser(user);
      UserEntity userEntity = userModel.toEntity();
      return right(userEntity);
    } on CustomException catch (e) {
      return left(
        ServerFailure(message: e.message),
      );
    }
  }
}
