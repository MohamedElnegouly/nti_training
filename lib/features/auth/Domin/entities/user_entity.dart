import 'package:hive/hive.dart';

part 'user_entity.g.dart'; // الملف اللي هيتولد

@HiveType(typeId: 1) // خليه رقم مميز (غير أي كلاس تاني عندك)
class UserEntity {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final String email;

  @HiveField(2)
  final String uId;

  UserEntity({required this.name, required this.email, required this.uId});

  @override
  String toString() {
    return 'UserEntity{name: $name, email: $email, uId: $uId}';
  }
}
