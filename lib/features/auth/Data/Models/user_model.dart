import 'package:firebase_auth/firebase_auth.dart';
import 'package:training_app/features/auth/Domin/entities/user_entity.dart';


class UserModel {
  final String name;
  final String email;
  final String uId;

  UserModel({required this.name, required this.email, required this.uId});
  factory UserModel.fromfirebaseUser(User user) {
    return UserModel(
        name: user.displayName ?? '', email: user.email!, uId: user.uid);
  }

  UserEntity toEntity() {
    return UserEntity(email: email, name: name, uId: uId);
  }
}
