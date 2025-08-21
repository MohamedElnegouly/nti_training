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
      if (e.code == 'weak-password') {
        throw CustomException(message: "كلمة مرور ضعيفه");
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: "البريد مستخدم بالفعل");
      }
    } catch (e) {
      throw CustomException(message: "حدث خطأ غير متوقع: $e");
    }
    throw CustomException(message: "حدث خطأ غير متوقع أثناء إنشاء المستخدم.");
  }
}
