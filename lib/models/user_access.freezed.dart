// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_access.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAccess _$UserAccessFromJson(Map<String, dynamic> json) {
  return _UserAccess.fromJson(json);
}

/// @nodoc
mixin _$UserAccess {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get organizationId => throw _privateConstructorUsedError;

  /// Serializes this UserAccess to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserAccess
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAccessCopyWith<UserAccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccessCopyWith<$Res> {
  factory $UserAccessCopyWith(
          UserAccess value, $Res Function(UserAccess) then) =
      _$UserAccessCopyWithImpl<$Res, UserAccess>;
  @useResult
  $Res call({String id, String userId, String organizationId});
}

/// @nodoc
class _$UserAccessCopyWithImpl<$Res, $Val extends UserAccess>
    implements $UserAccessCopyWith<$Res> {
  _$UserAccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAccess
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? organizationId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAccessImplCopyWith<$Res>
    implements $UserAccessCopyWith<$Res> {
  factory _$$UserAccessImplCopyWith(
          _$UserAccessImpl value, $Res Function(_$UserAccessImpl) then) =
      __$$UserAccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String userId, String organizationId});
}

/// @nodoc
class __$$UserAccessImplCopyWithImpl<$Res>
    extends _$UserAccessCopyWithImpl<$Res, _$UserAccessImpl>
    implements _$$UserAccessImplCopyWith<$Res> {
  __$$UserAccessImplCopyWithImpl(
      _$UserAccessImpl _value, $Res Function(_$UserAccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAccess
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? organizationId = null,
  }) {
    return _then(_$UserAccessImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAccessImpl implements _UserAccess {
  const _$UserAccessImpl(
      {required this.id, required this.userId, required this.organizationId});

  factory _$UserAccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAccessImplFromJson(json);

  @override
  final String id;
  @override
  final String userId;
  @override
  final String organizationId;

  @override
  String toString() {
    return 'UserAccess(id: $id, userId: $userId, organizationId: $organizationId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAccessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, organizationId);

  /// Create a copy of UserAccess
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAccessImplCopyWith<_$UserAccessImpl> get copyWith =>
      __$$UserAccessImplCopyWithImpl<_$UserAccessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAccessImplToJson(
      this,
    );
  }
}

abstract class _UserAccess implements UserAccess {
  const factory _UserAccess(
      {required final String id,
      required final String userId,
      required final String organizationId}) = _$UserAccessImpl;

  factory _UserAccess.fromJson(Map<String, dynamic> json) =
      _$UserAccessImpl.fromJson;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get organizationId;

  /// Create a copy of UserAccess
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAccessImplCopyWith<_$UserAccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
