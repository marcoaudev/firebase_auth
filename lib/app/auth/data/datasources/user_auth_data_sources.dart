import 'package:auth/app/auth/data/models/user_model.dart';

abstract class UserAuthDataSource {

  Future<UserModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

}