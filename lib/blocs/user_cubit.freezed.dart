// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserCubitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(UserProfile profile) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(UserProfile profile)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(UserProfile profile)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateEmpty value) empty,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateError value) error,
    required TResult Function(UserStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateEmpty value)? empty,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateError value)? error,
    TResult? Function(UserStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateEmpty value)? empty,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateError value)? error,
    TResult Function(UserStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCubitStateCopyWith<$Res> {
  factory $UserCubitStateCopyWith(
          UserCubitState value, $Res Function(UserCubitState) then) =
      _$UserCubitStateCopyWithImpl<$Res, UserCubitState>;
}

/// @nodoc
class _$UserCubitStateCopyWithImpl<$Res, $Val extends UserCubitState>
    implements $UserCubitStateCopyWith<$Res> {
  _$UserCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCubitState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserStateEmptyImplCopyWith<$Res> {
  factory _$$UserStateEmptyImplCopyWith(_$UserStateEmptyImpl value,
          $Res Function(_$UserStateEmptyImpl) then) =
      __$$UserStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateEmptyImplCopyWithImpl<$Res>
    extends _$UserCubitStateCopyWithImpl<$Res, _$UserStateEmptyImpl>
    implements _$$UserStateEmptyImplCopyWith<$Res> {
  __$$UserStateEmptyImplCopyWithImpl(
      _$UserStateEmptyImpl _value, $Res Function(_$UserStateEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCubitState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserStateEmptyImpl implements UserStateEmpty {
  const _$UserStateEmptyImpl();

  @override
  String toString() {
    return 'UserCubitState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(UserProfile profile) data,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(UserProfile profile)? data,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(UserProfile profile)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateEmpty value) empty,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateError value) error,
    required TResult Function(UserStateData value) data,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateEmpty value)? empty,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateError value)? error,
    TResult? Function(UserStateData value)? data,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateEmpty value)? empty,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateError value)? error,
    TResult Function(UserStateData value)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class UserStateEmpty implements UserCubitState {
  const factory UserStateEmpty() = _$UserStateEmptyImpl;
}

/// @nodoc
abstract class _$$UserStateLoadingImplCopyWith<$Res> {
  factory _$$UserStateLoadingImplCopyWith(_$UserStateLoadingImpl value,
          $Res Function(_$UserStateLoadingImpl) then) =
      __$$UserStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateLoadingImplCopyWithImpl<$Res>
    extends _$UserCubitStateCopyWithImpl<$Res, _$UserStateLoadingImpl>
    implements _$$UserStateLoadingImplCopyWith<$Res> {
  __$$UserStateLoadingImplCopyWithImpl(_$UserStateLoadingImpl _value,
      $Res Function(_$UserStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCubitState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserStateLoadingImpl implements UserStateLoading {
  const _$UserStateLoadingImpl();

  @override
  String toString() {
    return 'UserCubitState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(UserProfile profile) data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(UserProfile profile)? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(UserProfile profile)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateEmpty value) empty,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateError value) error,
    required TResult Function(UserStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateEmpty value)? empty,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateError value)? error,
    TResult? Function(UserStateData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateEmpty value)? empty,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateError value)? error,
    TResult Function(UserStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserStateLoading implements UserCubitState {
  const factory UserStateLoading() = _$UserStateLoadingImpl;
}

/// @nodoc
abstract class _$$UserStateErrorImplCopyWith<$Res> {
  factory _$$UserStateErrorImplCopyWith(_$UserStateErrorImpl value,
          $Res Function(_$UserStateErrorImpl) then) =
      __$$UserStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UserStateErrorImplCopyWithImpl<$Res>
    extends _$UserCubitStateCopyWithImpl<$Res, _$UserStateErrorImpl>
    implements _$$UserStateErrorImplCopyWith<$Res> {
  __$$UserStateErrorImplCopyWithImpl(
      _$UserStateErrorImpl _value, $Res Function(_$UserStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UserStateErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserStateErrorImpl implements UserStateError {
  const _$UserStateErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'UserCubitState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UserCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateErrorImplCopyWith<_$UserStateErrorImpl> get copyWith =>
      __$$UserStateErrorImplCopyWithImpl<_$UserStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(UserProfile profile) data,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(UserProfile profile)? data,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(UserProfile profile)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateEmpty value) empty,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateError value) error,
    required TResult Function(UserStateData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateEmpty value)? empty,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateError value)? error,
    TResult? Function(UserStateData value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateEmpty value)? empty,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateError value)? error,
    TResult Function(UserStateData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserStateError implements UserCubitState {
  const factory UserStateError({final String? message}) = _$UserStateErrorImpl;

  String? get message;

  /// Create a copy of UserCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateErrorImplCopyWith<_$UserStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserStateDataImplCopyWith<$Res> {
  factory _$$UserStateDataImplCopyWith(
          _$UserStateDataImpl value, $Res Function(_$UserStateDataImpl) then) =
      __$$UserStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfile profile});

  $UserProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$$UserStateDataImplCopyWithImpl<$Res>
    extends _$UserCubitStateCopyWithImpl<$Res, _$UserStateDataImpl>
    implements _$$UserStateDataImplCopyWith<$Res> {
  __$$UserStateDataImplCopyWithImpl(
      _$UserStateDataImpl _value, $Res Function(_$UserStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCubitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$UserStateDataImpl(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
    ));
  }

  /// Create a copy of UserCubitState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserProfileCopyWith<$Res> get profile {
    return $UserProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$UserStateDataImpl implements UserStateData {
  const _$UserStateDataImpl({required this.profile});

  @override
  final UserProfile profile;

  @override
  String toString() {
    return 'UserCubitState.data(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateDataImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  /// Create a copy of UserCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateDataImplCopyWith<_$UserStateDataImpl> get copyWith =>
      __$$UserStateDataImplCopyWithImpl<_$UserStateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String? message) error,
    required TResult Function(UserProfile profile) data,
  }) {
    return data(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
    TResult? Function(UserProfile profile)? data,
  }) {
    return data?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String? message)? error,
    TResult Function(UserProfile profile)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateEmpty value) empty,
    required TResult Function(UserStateLoading value) loading,
    required TResult Function(UserStateError value) error,
    required TResult Function(UserStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateEmpty value)? empty,
    TResult? Function(UserStateLoading value)? loading,
    TResult? Function(UserStateError value)? error,
    TResult? Function(UserStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateEmpty value)? empty,
    TResult Function(UserStateLoading value)? loading,
    TResult Function(UserStateError value)? error,
    TResult Function(UserStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class UserStateData implements UserCubitState {
  const factory UserStateData({required final UserProfile profile}) =
      _$UserStateDataImpl;

  UserProfile get profile;

  /// Create a copy of UserCubitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateDataImplCopyWith<_$UserStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
