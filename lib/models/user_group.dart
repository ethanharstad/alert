import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_group.freezed.dart';

part 'user_group.g.dart';

@freezed
class UserGroup with _$UserGroup {
  const factory UserGroup({
    required String id,
    required String userId,
    required String organizationId,
    required String groupId,
  }) = _UserGroup;

  factory UserGroup.fromJson(Map<String, dynamic> json) =>
      _$UserGroupFromJson(json);
}
