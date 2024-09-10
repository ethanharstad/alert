// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'organization_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrganizationBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Organization> organizations,
            Organization? selectedOrganization)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Organization> organizations,
            Organization? selectedOrganization)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Organization> organizations,
            Organization? selectedOrganization)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrganizationBlocError value) error,
    required TResult Function(OrganizationBlocLoading value) loading,
    required TResult Function(OrganizationBlocEmpty value) empty,
    required TResult Function(OrganizationBlocData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrganizationBlocError value)? error,
    TResult? Function(OrganizationBlocLoading value)? loading,
    TResult? Function(OrganizationBlocEmpty value)? empty,
    TResult? Function(OrganizationBlocData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrganizationBlocError value)? error,
    TResult Function(OrganizationBlocLoading value)? loading,
    TResult Function(OrganizationBlocEmpty value)? empty,
    TResult Function(OrganizationBlocData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationBlocStateCopyWith<$Res> {
  factory $OrganizationBlocStateCopyWith(OrganizationBlocState value,
          $Res Function(OrganizationBlocState) then) =
      _$OrganizationBlocStateCopyWithImpl<$Res, OrganizationBlocState>;
}

/// @nodoc
class _$OrganizationBlocStateCopyWithImpl<$Res,
        $Val extends OrganizationBlocState>
    implements $OrganizationBlocStateCopyWith<$Res> {
  _$OrganizationBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrganizationBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OrganizationBlocErrorImplCopyWith<$Res> {
  factory _$$OrganizationBlocErrorImplCopyWith(
          _$OrganizationBlocErrorImpl value,
          $Res Function(_$OrganizationBlocErrorImpl) then) =
      __$$OrganizationBlocErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrganizationBlocErrorImplCopyWithImpl<$Res>
    extends _$OrganizationBlocStateCopyWithImpl<$Res,
        _$OrganizationBlocErrorImpl>
    implements _$$OrganizationBlocErrorImplCopyWith<$Res> {
  __$$OrganizationBlocErrorImplCopyWithImpl(_$OrganizationBlocErrorImpl _value,
      $Res Function(_$OrganizationBlocErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrganizationBlocErrorImpl implements OrganizationBlocError {
  const _$OrganizationBlocErrorImpl();

  @override
  String toString() {
    return 'OrganizationBlocState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationBlocErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Organization> organizations,
            Organization? selectedOrganization)
        data,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Organization> organizations,
            Organization? selectedOrganization)?
        data,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Organization> organizations,
            Organization? selectedOrganization)?
        data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrganizationBlocError value) error,
    required TResult Function(OrganizationBlocLoading value) loading,
    required TResult Function(OrganizationBlocEmpty value) empty,
    required TResult Function(OrganizationBlocData value) data,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrganizationBlocError value)? error,
    TResult? Function(OrganizationBlocLoading value)? loading,
    TResult? Function(OrganizationBlocEmpty value)? empty,
    TResult? Function(OrganizationBlocData value)? data,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrganizationBlocError value)? error,
    TResult Function(OrganizationBlocLoading value)? loading,
    TResult Function(OrganizationBlocEmpty value)? empty,
    TResult Function(OrganizationBlocData value)? data,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class OrganizationBlocError implements OrganizationBlocState {
  const factory OrganizationBlocError() = _$OrganizationBlocErrorImpl;
}

/// @nodoc
abstract class _$$OrganizationBlocLoadingImplCopyWith<$Res> {
  factory _$$OrganizationBlocLoadingImplCopyWith(
          _$OrganizationBlocLoadingImpl value,
          $Res Function(_$OrganizationBlocLoadingImpl) then) =
      __$$OrganizationBlocLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrganizationBlocLoadingImplCopyWithImpl<$Res>
    extends _$OrganizationBlocStateCopyWithImpl<$Res,
        _$OrganizationBlocLoadingImpl>
    implements _$$OrganizationBlocLoadingImplCopyWith<$Res> {
  __$$OrganizationBlocLoadingImplCopyWithImpl(
      _$OrganizationBlocLoadingImpl _value,
      $Res Function(_$OrganizationBlocLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrganizationBlocLoadingImpl implements OrganizationBlocLoading {
  const _$OrganizationBlocLoadingImpl();

  @override
  String toString() {
    return 'OrganizationBlocState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationBlocLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Organization> organizations,
            Organization? selectedOrganization)
        data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Organization> organizations,
            Organization? selectedOrganization)?
        data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Organization> organizations,
            Organization? selectedOrganization)?
        data,
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
    required TResult Function(OrganizationBlocError value) error,
    required TResult Function(OrganizationBlocLoading value) loading,
    required TResult Function(OrganizationBlocEmpty value) empty,
    required TResult Function(OrganizationBlocData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrganizationBlocError value)? error,
    TResult? Function(OrganizationBlocLoading value)? loading,
    TResult? Function(OrganizationBlocEmpty value)? empty,
    TResult? Function(OrganizationBlocData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrganizationBlocError value)? error,
    TResult Function(OrganizationBlocLoading value)? loading,
    TResult Function(OrganizationBlocEmpty value)? empty,
    TResult Function(OrganizationBlocData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class OrganizationBlocLoading implements OrganizationBlocState {
  const factory OrganizationBlocLoading() = _$OrganizationBlocLoadingImpl;
}

/// @nodoc
abstract class _$$OrganizationBlocEmptyImplCopyWith<$Res> {
  factory _$$OrganizationBlocEmptyImplCopyWith(
          _$OrganizationBlocEmptyImpl value,
          $Res Function(_$OrganizationBlocEmptyImpl) then) =
      __$$OrganizationBlocEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrganizationBlocEmptyImplCopyWithImpl<$Res>
    extends _$OrganizationBlocStateCopyWithImpl<$Res,
        _$OrganizationBlocEmptyImpl>
    implements _$$OrganizationBlocEmptyImplCopyWith<$Res> {
  __$$OrganizationBlocEmptyImplCopyWithImpl(_$OrganizationBlocEmptyImpl _value,
      $Res Function(_$OrganizationBlocEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrganizationBlocEmptyImpl implements OrganizationBlocEmpty {
  const _$OrganizationBlocEmptyImpl();

  @override
  String toString() {
    return 'OrganizationBlocState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationBlocEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Organization> organizations,
            Organization? selectedOrganization)
        data,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Organization> organizations,
            Organization? selectedOrganization)?
        data,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Organization> organizations,
            Organization? selectedOrganization)?
        data,
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
    required TResult Function(OrganizationBlocError value) error,
    required TResult Function(OrganizationBlocLoading value) loading,
    required TResult Function(OrganizationBlocEmpty value) empty,
    required TResult Function(OrganizationBlocData value) data,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrganizationBlocError value)? error,
    TResult? Function(OrganizationBlocLoading value)? loading,
    TResult? Function(OrganizationBlocEmpty value)? empty,
    TResult? Function(OrganizationBlocData value)? data,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrganizationBlocError value)? error,
    TResult Function(OrganizationBlocLoading value)? loading,
    TResult Function(OrganizationBlocEmpty value)? empty,
    TResult Function(OrganizationBlocData value)? data,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class OrganizationBlocEmpty implements OrganizationBlocState {
  const factory OrganizationBlocEmpty() = _$OrganizationBlocEmptyImpl;
}

/// @nodoc
abstract class _$$OrganizationBlocDataImplCopyWith<$Res> {
  factory _$$OrganizationBlocDataImplCopyWith(_$OrganizationBlocDataImpl value,
          $Res Function(_$OrganizationBlocDataImpl) then) =
      __$$OrganizationBlocDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Organization> organizations, Organization? selectedOrganization});

  $OrganizationCopyWith<$Res>? get selectedOrganization;
}

/// @nodoc
class __$$OrganizationBlocDataImplCopyWithImpl<$Res>
    extends _$OrganizationBlocStateCopyWithImpl<$Res,
        _$OrganizationBlocDataImpl>
    implements _$$OrganizationBlocDataImplCopyWith<$Res> {
  __$$OrganizationBlocDataImplCopyWithImpl(_$OrganizationBlocDataImpl _value,
      $Res Function(_$OrganizationBlocDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrganizationBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizations = null,
    Object? selectedOrganization = freezed,
  }) {
    return _then(_$OrganizationBlocDataImpl(
      organizations: null == organizations
          ? _value._organizations
          : organizations // ignore: cast_nullable_to_non_nullable
              as List<Organization>,
      selectedOrganization: freezed == selectedOrganization
          ? _value.selectedOrganization
          : selectedOrganization // ignore: cast_nullable_to_non_nullable
              as Organization?,
    ));
  }

  /// Create a copy of OrganizationBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrganizationCopyWith<$Res>? get selectedOrganization {
    if (_value.selectedOrganization == null) {
      return null;
    }

    return $OrganizationCopyWith<$Res>(_value.selectedOrganization!, (value) {
      return _then(_value.copyWith(selectedOrganization: value));
    });
  }
}

/// @nodoc

class _$OrganizationBlocDataImpl implements OrganizationBlocData {
  const _$OrganizationBlocDataImpl(
      {required final List<Organization> organizations,
      this.selectedOrganization})
      : _organizations = organizations;

  final List<Organization> _organizations;
  @override
  List<Organization> get organizations {
    if (_organizations is EqualUnmodifiableListView) return _organizations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_organizations);
  }

  @override
  final Organization? selectedOrganization;

  @override
  String toString() {
    return 'OrganizationBlocState.data(organizations: $organizations, selectedOrganization: $selectedOrganization)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationBlocDataImpl &&
            const DeepCollectionEquality()
                .equals(other._organizations, _organizations) &&
            (identical(other.selectedOrganization, selectedOrganization) ||
                other.selectedOrganization == selectedOrganization));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_organizations),
      selectedOrganization);

  /// Create a copy of OrganizationBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationBlocDataImplCopyWith<_$OrganizationBlocDataImpl>
      get copyWith =>
          __$$OrganizationBlocDataImplCopyWithImpl<_$OrganizationBlocDataImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Organization> organizations,
            Organization? selectedOrganization)
        data,
  }) {
    return data(organizations, selectedOrganization);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Organization> organizations,
            Organization? selectedOrganization)?
        data,
  }) {
    return data?.call(organizations, selectedOrganization);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Organization> organizations,
            Organization? selectedOrganization)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(organizations, selectedOrganization);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrganizationBlocError value) error,
    required TResult Function(OrganizationBlocLoading value) loading,
    required TResult Function(OrganizationBlocEmpty value) empty,
    required TResult Function(OrganizationBlocData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrganizationBlocError value)? error,
    TResult? Function(OrganizationBlocLoading value)? loading,
    TResult? Function(OrganizationBlocEmpty value)? empty,
    TResult? Function(OrganizationBlocData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrganizationBlocError value)? error,
    TResult Function(OrganizationBlocLoading value)? loading,
    TResult Function(OrganizationBlocEmpty value)? empty,
    TResult Function(OrganizationBlocData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class OrganizationBlocData implements OrganizationBlocState {
  const factory OrganizationBlocData(
      {required final List<Organization> organizations,
      final Organization? selectedOrganization}) = _$OrganizationBlocDataImpl;

  List<Organization> get organizations;
  Organization? get selectedOrganization;

  /// Create a copy of OrganizationBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrganizationBlocDataImplCopyWith<_$OrganizationBlocDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
