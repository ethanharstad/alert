// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userSubscriptionRequested,
    required TResult Function() logOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userSubscriptionRequested,
    TResult? Function()? logOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userSubscriptionRequested,
    TResult Function()? logOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserSubscriptionRequested value)
        userSubscriptionRequested,
    required TResult Function(LogOutPressed value) logOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserSubscriptionRequested value)?
        userSubscriptionRequested,
    TResult? Function(LogOutPressed value)? logOutPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserSubscriptionRequested value)?
        userSubscriptionRequested,
    TResult Function(LogOutPressed value)? logOutPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserSubscriptionRequestedImplCopyWith<$Res> {
  factory _$$UserSubscriptionRequestedImplCopyWith(
          _$UserSubscriptionRequestedImpl value,
          $Res Function(_$UserSubscriptionRequestedImpl) then) =
      __$$UserSubscriptionRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserSubscriptionRequestedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$UserSubscriptionRequestedImpl>
    implements _$$UserSubscriptionRequestedImplCopyWith<$Res> {
  __$$UserSubscriptionRequestedImplCopyWithImpl(
      _$UserSubscriptionRequestedImpl _value,
      $Res Function(_$UserSubscriptionRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserSubscriptionRequestedImpl implements UserSubscriptionRequested {
  const _$UserSubscriptionRequestedImpl();

  @override
  String toString() {
    return 'AppEvent.userSubscriptionRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSubscriptionRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userSubscriptionRequested,
    required TResult Function() logOutPressed,
  }) {
    return userSubscriptionRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userSubscriptionRequested,
    TResult? Function()? logOutPressed,
  }) {
    return userSubscriptionRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userSubscriptionRequested,
    TResult Function()? logOutPressed,
    required TResult orElse(),
  }) {
    if (userSubscriptionRequested != null) {
      return userSubscriptionRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserSubscriptionRequested value)
        userSubscriptionRequested,
    required TResult Function(LogOutPressed value) logOutPressed,
  }) {
    return userSubscriptionRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserSubscriptionRequested value)?
        userSubscriptionRequested,
    TResult? Function(LogOutPressed value)? logOutPressed,
  }) {
    return userSubscriptionRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserSubscriptionRequested value)?
        userSubscriptionRequested,
    TResult Function(LogOutPressed value)? logOutPressed,
    required TResult orElse(),
  }) {
    if (userSubscriptionRequested != null) {
      return userSubscriptionRequested(this);
    }
    return orElse();
  }
}

abstract class UserSubscriptionRequested implements AppEvent {
  const factory UserSubscriptionRequested() = _$UserSubscriptionRequestedImpl;
}

/// @nodoc
abstract class _$$LogOutPressedImplCopyWith<$Res> {
  factory _$$LogOutPressedImplCopyWith(
          _$LogOutPressedImpl value, $Res Function(_$LogOutPressedImpl) then) =
      __$$LogOutPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutPressedImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$LogOutPressedImpl>
    implements _$$LogOutPressedImplCopyWith<$Res> {
  __$$LogOutPressedImplCopyWithImpl(
      _$LogOutPressedImpl _value, $Res Function(_$LogOutPressedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogOutPressedImpl implements LogOutPressed {
  const _$LogOutPressedImpl();

  @override
  String toString() {
    return 'AppEvent.logOutPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() userSubscriptionRequested,
    required TResult Function() logOutPressed,
  }) {
    return logOutPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? userSubscriptionRequested,
    TResult? Function()? logOutPressed,
  }) {
    return logOutPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? userSubscriptionRequested,
    TResult Function()? logOutPressed,
    required TResult orElse(),
  }) {
    if (logOutPressed != null) {
      return logOutPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserSubscriptionRequested value)
        userSubscriptionRequested,
    required TResult Function(LogOutPressed value) logOutPressed,
  }) {
    return logOutPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserSubscriptionRequested value)?
        userSubscriptionRequested,
    TResult? Function(LogOutPressed value)? logOutPressed,
  }) {
    return logOutPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserSubscriptionRequested value)?
        userSubscriptionRequested,
    TResult Function(LogOutPressed value)? logOutPressed,
    required TResult orElse(),
  }) {
    if (logOutPressed != null) {
      return logOutPressed(this);
    }
    return orElse();
  }
}

abstract class LogOutPressed implements AppEvent {
  const factory LogOutPressed() = _$LogOutPressedImpl;
}

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() unauthenticated,
    required TResult Function(AppUser user) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializing,
    TResult? Function()? unauthenticated,
    TResult? Function(AppUser user)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? unauthenticated,
    TResult Function(AppUser user)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initializing value) initializing,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Ready value) ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initializing value)? initializing,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Ready value)? ready,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initializing value)? initializing,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializingImplCopyWith<$Res> {
  factory _$$InitializingImplCopyWith(
          _$InitializingImpl value, $Res Function(_$InitializingImpl) then) =
      __$$InitializingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializingImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InitializingImpl>
    implements _$$InitializingImplCopyWith<$Res> {
  __$$InitializingImplCopyWithImpl(
      _$InitializingImpl _value, $Res Function(_$InitializingImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializingImpl implements Initializing {
  const _$InitializingImpl();

  @override
  String toString() {
    return 'AppState.initializing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() unauthenticated,
    required TResult Function(AppUser user) ready,
  }) {
    return initializing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializing,
    TResult? Function()? unauthenticated,
    TResult? Function(AppUser user)? ready,
  }) {
    return initializing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? unauthenticated,
    TResult Function(AppUser user)? ready,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initializing value) initializing,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Ready value) ready,
  }) {
    return initializing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initializing value)? initializing,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Ready value)? ready,
  }) {
    return initializing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initializing value)? initializing,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) {
    if (initializing != null) {
      return initializing(this);
    }
    return orElse();
  }
}

abstract class Initializing implements AppState {
  const factory Initializing() = _$InitializingImpl;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthenticatedImpl implements Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'AppState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() unauthenticated,
    required TResult Function(AppUser user) ready,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializing,
    TResult? Function()? unauthenticated,
    TResult? Function(AppUser user)? ready,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? unauthenticated,
    TResult Function(AppUser user)? ready,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initializing value) initializing,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Ready value) ready,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initializing value)? initializing,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Ready value)? ready,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initializing value)? initializing,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AppState {
  const factory Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppUser user});

  $AppUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ReadyImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get user {
    return $AppUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$ReadyImpl implements Ready {
  const _$ReadyImpl(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'AppState.ready(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializing,
    required TResult Function() unauthenticated,
    required TResult Function(AppUser user) ready,
  }) {
    return ready(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializing,
    TResult? Function()? unauthenticated,
    TResult? Function(AppUser user)? ready,
  }) {
    return ready?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializing,
    TResult Function()? unauthenticated,
    TResult Function(AppUser user)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initializing value) initializing,
    required TResult Function(Unauthenticated value) unauthenticated,
    required TResult Function(Ready value) ready,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initializing value)? initializing,
    TResult? Function(Unauthenticated value)? unauthenticated,
    TResult? Function(Ready value)? ready,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initializing value)? initializing,
    TResult Function(Unauthenticated value)? unauthenticated,
    TResult Function(Ready value)? ready,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class Ready implements AppState {
  const factory Ready(final AppUser user) = _$ReadyImpl;

  AppUser get user;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
