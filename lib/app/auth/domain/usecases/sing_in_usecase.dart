import 'package:firebase_auth/app/auth/domain/entities/user_entity.dart';
import 'package:firebase_auth/app/auth/domain/repositories/user_repository.dart';
import 'package:flutter/material.dart';

class SignInUseCase {
  final UserRepository repository;

  SignInUseCase({required this.repository});

  Future<UserEntity> call(SignInParams params) async {
    try {
      return await repository.signIn(
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

class SignInParams {
  final TextEditingController email;
  final TextEditingController password;

  SignInParams({
    required this.email,
    required this.password,
  });
}