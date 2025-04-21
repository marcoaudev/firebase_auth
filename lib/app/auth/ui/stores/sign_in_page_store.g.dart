// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SignInPageStore on _SignInPageStore, Store {
  late final _$userAtom = Atom(name: '_SignInPageStore.user', context: context);

  @override
  UserEntity get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(UserEntity value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  late final _$signInPageStateAtom =
      Atom(name: '_SignInPageStore.signInPageState', context: context);

  @override
  SignInPageState get signInPageState {
    _$signInPageStateAtom.reportRead();
    return super.signInPageState;
  }

  @override
  set signInPageState(SignInPageState value) {
    _$signInPageStateAtom.reportWrite(value, super.signInPageState, () {
      super.signInPageState = value;
    });
  }

  late final _$signInAsyncAction =
      AsyncAction('_SignInPageStore.signIn', context: context);

  @override
  Future signIn(
      {required TextEditingController email,
      required TextEditingController password}) {
    return _$signInAsyncAction
        .run(() async => super.signIn(email: email, password: password));
  }

  late final _$_SignInPageStoreActionController =
      ActionController(name: '_SignInPageStore', context: context);

  @override
  void setStatePage(SignInPageState value) {
    final _$actionInfo = _$_SignInPageStoreActionController.startAction(
        name: '_SignInPageStore.setStatePage');
    try {
      return super.setStatePage(value);
    } finally {
      _$_SignInPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
signInPageState: ${signInPageState}
    ''';
  }
}
