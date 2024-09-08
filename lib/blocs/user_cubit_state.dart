part of 'user_cubit.dart';

@freezed
sealed class UserCubitState with _$UserCubitState {
  const factory UserCubitState.loading() = _Loading;

  const factory UserCubitState.error({
    String? message,
  }) = _Error;

  const factory UserCubitState.data({
    required UserProfile profile,
  }) = _Data;
}
