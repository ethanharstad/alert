part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required Email email,
    required Password password,
    required FormzSubmissionStatus status,
    @Default(false) bool isValid,
    String? errorMessage,
  }) = _LoginState;
}
