// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'language_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LanguageState {
  String get langCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String langCode) initialState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String langCode)? initialState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String langCode)? initialState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LanguageStateCopyWith<LanguageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageStateCopyWith<$Res> {
  factory $LanguageStateCopyWith(
          LanguageState value, $Res Function(LanguageState) then) =
      _$LanguageStateCopyWithImpl<$Res, LanguageState>;
  @useResult
  $Res call({String langCode});
}

/// @nodoc
class _$LanguageStateCopyWithImpl<$Res, $Val extends LanguageState>
    implements $LanguageStateCopyWith<$Res> {
  _$LanguageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? langCode = null,
  }) {
    return _then(_value.copyWith(
      langCode: null == langCode
          ? _value.langCode
          : langCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialPageImplCopyWith<$Res>
    implements $LanguageStateCopyWith<$Res> {
  factory _$$InitialPageImplCopyWith(
          _$InitialPageImpl value, $Res Function(_$InitialPageImpl) then) =
      __$$InitialPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String langCode});
}

/// @nodoc
class __$$InitialPageImplCopyWithImpl<$Res>
    extends _$LanguageStateCopyWithImpl<$Res, _$InitialPageImpl>
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
    return 'LanguageState.initialState(langCode: $langCode)';
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
  }) {
    return initialState(langCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String langCode)? initialState,
  }) {
    return initialState?.call(langCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String langCode)? initialState,
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
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialPage implements LanguageState {
  const factory _InitialPage({final String langCode}) = _$InitialPageImpl;

  @override
  String get langCode;
  @override
  @JsonKey(ignore: true)
  _$$InitialPageImplCopyWith<_$InitialPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
