import 'package:auth/app/auth/domain/entities/user_entity.dart';
import 'package:auth/app/auth/domain/repositories/user_repository.dart';
import 'package:flutter/material.dart';

class SignInUseCase {
  final UserRepository repository;

  SignInUseCase({required this.repository});

  Future<UserEntity> call(TextEditingController email, TextEditingController password) async {
    try {
      return await repository.signIn(
        email: email.text,
        password: password.text,
      );
    } on ArgumentError catch (error) {
      throw Exception(error);
    } catch (error) {
      throw Exception(error);
    }
  }
}
