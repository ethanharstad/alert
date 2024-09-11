part of 'group_bloc.dart';

@freezed
sealed class GroupBlocState with _$GroupBlocState {
  const factory GroupBlocState.error({
    String? message,
}) = GroupBlocError;

  const factory GroupBlocState.loading() = GroupBlocLoading;

  const factory GroupBlocState.empty() = GroupBlocEmpty;

  const factory GroupBlocState.data({
    required List<Group> groups,
    GroupTree? tree,
}) = GroupBlocData;
}