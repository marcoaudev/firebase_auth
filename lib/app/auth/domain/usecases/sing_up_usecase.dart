import 'package:auth/app/auth/domain/entities/user_entity.dart';
import 'package:auth/app/auth/domain/repositories/user_repository.dart';
import 'package:flutter/material.dart';

class SignUpUseCase {
  final UserRepository repository;

  SignUpUseCase({required this.repository});

  Future<UserEntity> call(SignUpParams params) async {
    try {
      return await repository.signUp(
        email: params.email.text,
        password: params.password.text,
      );
    } on ArgumentError catch (error) {
      throw Exception(error);
    } catch (error) {
      throw Exception(error);
    }
  }
}

class SignUpParams {
  final TextEditingController email;
  final TextEditingController password;

  SignUpParams({required this.email, required this.password});
}
