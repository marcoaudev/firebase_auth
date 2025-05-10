import 'package:auth/app/auth/domain/entities/user_entity.dart';
import 'package:auth/app/auth/domain/usecases/sing_in_usecase.dart';
import 'package:auth/app/auth/ui/states/sign_in_page_state.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'sign_in_page_store.g.dart';

class SignInPageStore = _SignInPageStore with _$SignInPageStore;

abstract class _SignInPageStore with Store {
  final SignInUseCase usecase;

  _SignInPageStore(this.usecase);

  @observable
  UserEntity user = UserEntity.empty;

  @observable
  SignInPageState signInPageState = SignInPageState.idle;

  @action
  void setStatePage(SignInPageState value) => signInPageState = value;

  @action
  void signIn({
    required TextEditingController email,
    required TextEditingController password,
  }) async {
    setStatePage(SignInPageState.loading);
    try {
      user = await usecase(email, password);
      setStatePage(SignInPageState.success);
    } catch (e) {
      setStatePage(SignInPageState.error);
    }
  }
}
