import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:training_app/core/errors/custom_Exception.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword(
      {required String emailAddress, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      //to know what is the Exception
      log('this Exception come from createUserWithEmailAndPassword${e.toString()}');
      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمه المرور ضعيفه');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: 'الايميل موجود');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: 'قم بالاتصال بالانترنت');
      } else {
        throw CustomException(message: 'حدث خطأ حاول لاحقا');
      }
    } catch (e) {
      log('Excaption  in CreateUserWithEmailAndPassword. ${e.toString()}');

      throw CustomException(message: 'حدث خطأ حاول لاحقا');
    }
  }
}
