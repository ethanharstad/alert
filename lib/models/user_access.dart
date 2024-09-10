import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_access.freezed.dart';

part 'user_access.g.dart';

@freezed
class UserAccess with _$UserAccess {
  const factory UserAccess({
    required String id,
    required String userId,
    required String organizationId,
  }) = _UserAccess;

  factory UserAccess.fromJson(Map<String, dynamic> json) =>
      _$UserAccessFromJson(json);
}
