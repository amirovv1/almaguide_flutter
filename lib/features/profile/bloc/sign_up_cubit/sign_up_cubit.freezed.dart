// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String langCode) initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function() sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String langCode)? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function()? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String langCode)? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function()? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_AuthLoading value) loadingState,
    required TResult Function(_AuthError value) errorState,
    required TResult Function(_AuthSuccess value) sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_AuthLoading value)? loadingState,
    TResult? Function(_AuthError value)? errorState,
    TResult? Function(_AuthSuccess value)? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_AuthLoading value)? loadingState,
    TResult Function(_AuthError value)? errorState,
    TResult Function(_AuthSuccess value)? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

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
  $Res call({String langCode});
}

/// @nodoc
class __$$InitialPageImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$InitialPageImpl>
    implements _$$InitialPageImplCopyWith<$Res> {
  __$$InitialPageImplCopyWithImpl(
      _$InitialPageImpl _value, $Res Function(_$InitialPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? langCode = null,
  }) {
    return _then(_$InitialPageImpl(
      langCode: null == langCode
          ? _value.langCode
          : langCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialPageImpl implements _InitialPage {
  const _$InitialPageImpl({this.langCode = ''});

  @override
  @JsonKey()
  final String langCode;

  @override
  String toString() {
    return 'SignUpState.initialState(langCode: $langCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialPageImpl &&
            (identical(other.langCode, langCode) ||
                other.langCode == langCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, langCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialPageImplCopyWith<_$InitialPageImpl> get copyWith =>
      __$$InitialPageImplCopyWithImpl<_$InitialPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String langCode) initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function() sucess,
  }) {
    return initialState(langCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String langCode)? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function()? sucess,
  }) {
    return initialState?.call(langCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String langCode)? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function()? sucess,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(langCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_AuthLoading value) loadingState,
    required TResult Function(_AuthError value) errorState,
    required TResult Function(_AuthSuccess value) sucess,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_AuthLoading value)? loadingState,
    TResult? Function(_AuthError value)? errorState,
    TResult? Function(_AuthSuccess value)? sucess,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_AuthLoading value)? loadingState,
    TResult Function(_AuthError value)? errorState,
    TResult Function(_AuthSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialPage implements SignUpState {
  const factory _InitialPage({final String langCode}) = _$InitialPageImpl;

  String get langCode;
  @JsonKey(ignore: true)
  _$$InitialPageImplCopyWith<_$InitialPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthLoadingImplCopyWith<$Res> {
  factory _$$AuthLoadingImplCopyWith(
          _$AuthLoadingImpl value, $Res Function(_$AuthLoadingImpl) then) =
      __$$AuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$AuthLoadingImpl>
    implements _$$AuthLoadingImplCopyWith<$Res> {
  __$$AuthLoadingImplCopyWithImpl(
      _$AuthLoadingImpl _value, $Res Function(_$AuthLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthLoadingImpl implements _AuthLoading {
  const _$AuthLoadingImpl();

  @override
  String toString() {
    return 'SignUpState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String langCode) initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function() sucess,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String langCode)? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function()? sucess,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String langCode)? initialState,
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
    required TResult Function(_AuthLoading value) loadingState,
    required TResult Function(_AuthError value) errorState,
    required TResult Function(_AuthSuccess value) sucess,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_AuthLoading value)? loadingState,
    TResult? Function(_AuthError value)? errorState,
    TResult? Function(_AuthSuccess value)? sucess,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_AuthLoading value)? loadingState,
    TResult Function(_AuthError value)? errorState,
    TResult Function(_AuthSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _AuthLoading implements SignUpState {
  const factory _AuthLoading() = _$AuthLoadingImpl;
}

/// @nodoc
abstract class _$$AuthErrorImplCopyWith<$Res> {
  factory _$$AuthErrorImplCopyWith(
          _$AuthErrorImpl value, $Res Function(_$AuthErrorImpl) then) =
      __$$AuthErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthErrorImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$AuthErrorImpl>
    implements _$$AuthErrorImplCopyWith<$Res> {
  __$$AuthErrorImplCopyWithImpl(
      _$AuthErrorImpl _value, $Res Function(_$AuthErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthErrorImpl implements _AuthError {
  const _$AuthErrorImpl({this.message = ''});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'SignUpState.errorState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthErrorImplCopyWith<_$AuthErrorImpl> get copyWith =>
      __$$AuthErrorImplCopyWithImpl<_$AuthErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String langCode) initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function() sucess,
  }) {
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String langCode)? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function()? sucess,
  }) {
    return errorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String langCode)? initialState,
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
    required TResult Function(_AuthLoading value) loadingState,
    required TResult Function(_AuthError value) errorState,
    required TResult Function(_AuthSuccess value) sucess,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_AuthLoading value)? loadingState,
    TResult? Function(_AuthError value)? errorState,
    TResult? Function(_AuthSuccess value)? sucess,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_AuthLoading value)? loadingState,
    TResult Function(_AuthError value)? errorState,
    TResult Function(_AuthSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _AuthError implements SignUpState {
  const factory _AuthError({final String message}) = _$AuthErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AuthErrorImplCopyWith<_$AuthErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthSuccessImplCopyWith<$Res> {
  factory _$$AuthSuccessImplCopyWith(
          _$AuthSuccessImpl value, $Res Function(_$AuthSuccessImpl) then) =
      __$$AuthSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthSuccessImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$AuthSuccessImpl>
    implements _$$AuthSuccessImplCopyWith<$Res> {
  __$$AuthSuccessImplCopyWithImpl(
      _$AuthSuccessImpl _value, $Res Function(_$AuthSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthSuccessImpl implements _AuthSuccess {
  const _$AuthSuccessImpl();

  @override
  String toString() {
    return 'SignUpState.sucess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String langCode) initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function() sucess,
  }) {
    return sucess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String langCode)? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function()? sucess,
  }) {
    return sucess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String langCode)? initialState,
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
    required TResult Function(_AuthLoading value) loadingState,
    required TResult Function(_AuthError value) errorState,
    required TResult Function(_AuthSuccess value) sucess,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_AuthLoading value)? loadingState,
    TResult? Function(_AuthError value)? errorState,
    TResult? Function(_AuthSuccess value)? sucess,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_AuthLoading value)? loadingState,
    TResult Function(_AuthError value)? errorState,
    TResult Function(_AuthSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _AuthSuccess implements SignUpState {
  const factory _AuthSuccess() = _$AuthSuccessImpl;
}
