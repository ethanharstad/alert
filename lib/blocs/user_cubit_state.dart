part of 'user_cubit.dart';

@freezed
sealed class UserCubitState with _$UserCubitState {
  const factory UserCubitState.empty() = UserStateEmpty;

  const factory UserCubitState.loading() = UserStateLoading;

  const factory UserCubitState.error({
    String? message,
  }) = UserStateError;

  const factory UserCubitState.data({
    required UserProfile profile,
  }) = UserStateData;
}
