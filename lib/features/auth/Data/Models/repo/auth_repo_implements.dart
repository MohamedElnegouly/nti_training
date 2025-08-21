import 'package:dartz/dartz.dart';
import 'package:training_app/features/auth/Domin/entities/user_entity.dart';
import 'package:training_app/features/auth/Domin/repo/auth_repo.dart';

class AuthRepoImplements implements AuthRepo{
  @override
  Future<Either<String, UserEntity>> createUserWithEmailAndPassword({required String email, required String password}) {
    // TODO: implement createUserWithEmailAndPassword
    throw UnimplementedError();
  }

}