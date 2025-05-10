enum SignInPageState {
  idle,
  loading,
  success,
  error;

  bool get isLoading => this == SignInPageState.loading;

  bool get isSuccess => this == SignInPageState.success;

  bool get isError => this == SignInPageState.error;

  bool get isIdle => this == SignInPageState.idle;
}
