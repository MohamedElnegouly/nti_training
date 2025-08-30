import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:training_app/core/errors/custom_Exception.dart';
import 'package:training_app/core/errors/failure.dart';
import 'package:training_app/core/service/dataBaseService.dart';
import 'package:training_app/core/service/firebase_auth.dart';
import 'package:training_app/core/utils/backEndPoint.dart';
import 'package:training_app/features/auth/Data/Models/user_model.dart';
import 'package:training_app/features/auth/Domin/entities/user_entity.dart';
import 'package:training_app/features/auth/Domin/repo/auth_repo.dart';

class AuthRepoImplements extends AuthRepo {
  FirebaseAuthService firebaseAuthService;
  Databaseservice databaseservice;
  AuthRepoImplements(this.firebaseAuthService, this.databaseservice);

  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      {required String email,
      required String password,
      required String name}) async {
    User? user;
    try {
      user = await firebaseAuthService.createUserWithEmailAndPassword(
          emailAddress: email, password: password);
      // UserModel userModel = UserModel.fromfirebaseUser(user);
      UserEntity userEntity =
          UserEntity(name: name, email: email, uId: user.uid);
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomException catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      return left(
        ServerFailure(message: e.message),
      );
    } catch (e) {
      if (user != null) {
        await firebaseAuthService.deleteUser();
      }
      log('Exception from addUserData ${e.toString()}');
      return left(
        ServerFailure(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
          email: email, password: password);
      var userEntity = await getUserData(uId: user.uid);
      //UserModel userModel = UserModel.fromfirebaseUser(user);
      // UserEntity userEntity = userModel.toEntity();
      return right(userEntity);
    } on CustomException catch (e) {
      return left(
        ServerFailure(message: e.message),
      );
    }
  }

  @override
  Future addUserData({required UserEntity user}) async {
    await databaseservice.addData(
        path: Backendpoint.addUserData, data: UserModel.fromEntity(user).toJson() , docId: user.uId);
  }

  @override
  Future<UserEntity> getUserData({required String uId}) async {
    var data = await databaseservice.getData(path: Backendpoint.getUserData, docId: uId)
        as Map<String, dynamic>;
    UserModel userModel = UserModel.fromJson(data);
    UserEntity userEntity = userModel.toEntity();
    return userEntity;
  }
}
