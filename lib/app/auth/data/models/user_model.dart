import 'package:auth/app/auth/domain/entities/user_entity.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UserEntity {
  const UserModel({required super.id, required super.email});

  factory UserModel.fromJson(UserCredential user) {
    return UserModel(
      id: user.user?.uid ?? "ID Nulo",
      email: user.user?.email ?? "Email Nulo",
    );
  }
}
