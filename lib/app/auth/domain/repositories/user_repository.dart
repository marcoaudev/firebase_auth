import 'package:firebase_auth/app/auth/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> signUp({
    required String email,
    required String password,
  });

  Future<UserEntity> signIn({
    required String email,
    required String password,
  });

  Future<void> signOut();
}