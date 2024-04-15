// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAuthorized, UserDto? user) initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function() sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAuthorized, UserDto? user)? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function()? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAuthorized, UserDto? user)? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function()? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_ProfileLoading value) loadingState,
    required TResult Function(_ProfileError value) errorState,
    required TResult Function(_ProfileSuccess value) sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_ProfileLoading value)? loadingState,
    TResult? Function(_ProfileError value)? errorState,
    TResult? Function(_ProfileSuccess value)? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_ProfileLoading value)? loadingState,
    TResult Function(_ProfileError value)? errorState,
    TResult Function(_ProfileSuccess value)? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialPageImplCopyWith<$Res> {
  factory _$$InitialPageImplCopyWith(
          _$InitialPageImpl value, $Res Function(_$InitialPageImpl) then) =
      __$$InitialPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAuthorized, UserDto? user});

  $UserDtoCopyWith<$Res>? get user;
}

/// @nodoc
class __$$InitialPageImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$InitialPageImpl>
    implements _$$InitialPageImplCopyWith<$Res> {
  __$$InitialPageImplCopyWithImpl(
      _$InitialPageImpl _value, $Res Function(_$InitialPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAuthorized = null,
    Object? user = freezed,
  }) {
    return _then(_$InitialPageImpl(
      isAuthorized: null == isAuthorized
          ? _value.isAuthorized
          : isAuthorized // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDtoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$InitialPageImpl implements _InitialPage {
  const _$InitialPageImpl({this.isAuthorized = false, this.user});

  @override
  @JsonKey()
  final bool isAuthorized;
  @override
  final UserDto? user;

  @override
  String toString() {
    return 'ProfileState.initialState(isAuthorized: $isAuthorized, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialPageImpl &&
            (identical(other.isAuthorized, isAuthorized) ||
                other.isAuthorized == isAuthorized) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAuthorized, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialPageImplCopyWith<_$InitialPageImpl> get copyWith =>
      __$$InitialPageImplCopyWithImpl<_$InitialPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAuthorized, UserDto? user) initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function() sucess,
  }) {
    return initialState(isAuthorized, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAuthorized, UserDto? user)? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function()? sucess,
  }) {
    return initialState?.call(isAuthorized, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAuthorized, UserDto? user)? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function()? sucess,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(isAuthorized, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_ProfileLoading value) loadingState,
    required TResult Function(_ProfileError value) errorState,
    required TResult Function(_ProfileSuccess value) sucess,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_ProfileLoading value)? loadingState,
    TResult? Function(_ProfileError value)? errorState,
    TResult? Function(_ProfileSuccess value)? sucess,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_ProfileLoading value)? loadingState,
    TResult Function(_ProfileError value)? errorState,
    TResult Function(_ProfileSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialPage implements ProfileState {
  const factory _InitialPage({final bool isAuthorized, final UserDto? user}) =
      _$InitialPageImpl;

  bool get isAuthorized;
  UserDto? get user;
  @JsonKey(ignore: true)
  _$$InitialPageImplCopyWith<_$InitialPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileLoadingImplCopyWith<$Res> {
  factory _$$ProfileLoadingImplCopyWith(_$ProfileLoadingImpl value,
          $Res Function(_$ProfileLoadingImpl) then) =
      __$$ProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadingImpl>
    implements _$$ProfileLoadingImplCopyWith<$Res> {
  __$$ProfileLoadingImplCopyWithImpl(
      _$ProfileLoadingImpl _value, $Res Function(_$ProfileLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileLoadingImpl implements _ProfileLoading {
  const _$ProfileLoadingImpl();

  @override
  String toString() {
    return 'ProfileState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAuthorized, UserDto? user) initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function() sucess,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAuthorized, UserDto? user)? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function()? sucess,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAuthorized, UserDto? user)? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function()? sucess,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_ProfileLoading value) loadingState,
    required TResult Function(_ProfileError value) errorState,
    required TResult Function(_ProfileSuccess value) sucess,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_ProfileLoading value)? loadingState,
    TResult? Function(_ProfileError value)? errorState,
    TResult? Function(_ProfileSuccess value)? sucess,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_ProfileLoading value)? loadingState,
    TResult Function(_ProfileError value)? errorState,
    TResult Function(_ProfileSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _ProfileLoading implements ProfileState {
  const factory _ProfileLoading() = _$ProfileLoadingImpl;
}

/// @nodoc
abstract class _$$ProfileErrorImplCopyWith<$Res> {
  factory _$$ProfileErrorImplCopyWith(
          _$ProfileErrorImpl value, $Res Function(_$ProfileErrorImpl) then) =
      __$$ProfileErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProfileErrorImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileErrorImpl>
    implements _$$ProfileErrorImplCopyWith<$Res> {
  __$$ProfileErrorImplCopyWithImpl(
      _$ProfileErrorImpl _value, $Res Function(_$ProfileErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ProfileErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileErrorImpl implements _ProfileError {
  const _$ProfileErrorImpl({this.message = ''});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ProfileState.errorState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileErrorImplCopyWith<_$ProfileErrorImpl> get copyWith =>
      __$$ProfileErrorImplCopyWithImpl<_$ProfileErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAuthorized, UserDto? user) initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function() sucess,
  }) {
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAuthorized, UserDto? user)? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function()? sucess,
  }) {
    return errorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAuthorized, UserDto? user)? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function()? sucess,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_ProfileLoading value) loadingState,
    required TResult Function(_ProfileError value) errorState,
    required TResult Function(_ProfileSuccess value) sucess,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_ProfileLoading value)? loadingState,
    TResult? Function(_ProfileError value)? errorState,
    TResult? Function(_ProfileSuccess value)? sucess,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_ProfileLoading value)? loadingState,
    TResult Function(_ProfileError value)? errorState,
    TResult Function(_ProfileSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ProfileError implements ProfileState {
  const factory _ProfileError({final String message}) = _$ProfileErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ProfileErrorImplCopyWith<_$ProfileErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileSuccessImplCopyWith<$Res> {
  factory _$$ProfileSuccessImplCopyWith(_$ProfileSuccessImpl value,
          $Res Function(_$ProfileSuccessImpl) then) =
      __$$ProfileSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileSuccessImpl>
    implements _$$ProfileSuccessImplCopyWith<$Res> {
  __$$ProfileSuccessImplCopyWithImpl(
      _$ProfileSuccessImpl _value, $Res Function(_$ProfileSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileSuccessImpl implements _ProfileSuccess {
  const _$ProfileSuccessImpl();

  @override
  String toString() {
    return 'ProfileState.sucess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAuthorized, UserDto? user) initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function() sucess,
  }) {
    return sucess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAuthorized, UserDto? user)? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function()? sucess,
  }) {
    return sucess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAuthorized, UserDto? user)? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function()? sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_ProfileLoading value) loadingState,
    required TResult Function(_ProfileError value) errorState,
    required TResult Function(_ProfileSuccess value) sucess,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_ProfileLoading value)? loadingState,
    TResult? Function(_ProfileError value)? errorState,
    TResult? Function(_ProfileSuccess value)? sucess,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_ProfileLoading value)? loadingState,
    TResult Function(_ProfileError value)? errorState,
    TResult Function(_ProfileSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _ProfileSuccess implements ProfileState {
  const factory _ProfileSuccess() = _$ProfileSuccessImpl;
}
