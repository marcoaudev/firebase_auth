import 'package:auth/app/auth/data/datasources/user_auth_data_sources.dart';
import 'package:auth/app/auth/domain/entities/user_entity.dart';
import 'package:auth/app/auth/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository{
  final UserAuthDataSource dataSource;

  UserRepositoryImpl(this.dataSource);

  @override
  Future<UserEntity> signIn({required String email, required String password}) async{
    final user = await dataSource.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    return user;
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<UserEntity> signUp({required String email, required String password}) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

}