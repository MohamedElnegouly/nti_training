class UserEntity {
  final String name;
  final String email;
  final String uId;

  UserEntity({required this.name, required this.email, required this.uId});

  @override
  String toString() {
    return 'UserEntity{name: $name, email: $email, uId: $uId}';
  }
}