// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchanges_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExchangesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<Currency> exchanges) sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<Currency> exchanges)? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<Currency> exchanges)? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_ExchangesLoading value) loadingState,
    required TResult Function(_ExchangesError value) errorState,
    required TResult Function(_ExchangesSuccess value) sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_ExchangesLoading value)? loadingState,
    TResult? Function(_ExchangesError value)? errorState,
    TResult? Function(_ExchangesSuccess value)? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_ExchangesLoading value)? loadingState,
    TResult Function(_ExchangesError value)? errorState,
    TResult Function(_ExchangesSuccess value)? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangesStateCopyWith<$Res> {
  factory $ExchangesStateCopyWith(
          ExchangesState value, $Res Function(ExchangesState) then) =
      _$ExchangesStateCopyWithImpl<$Res, ExchangesState>;
}

/// @nodoc
class _$ExchangesStateCopyWithImpl<$Res, $Val extends ExchangesState>
    implements $ExchangesStateCopyWith<$Res> {
  _$ExchangesStateCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$InitialPageImplCopyWithImpl<$Res>
    extends _$ExchangesStateCopyWithImpl<$Res, _$InitialPageImpl>
    implements _$$InitialPageImplCopyWith<$Res> {
  __$$InitialPageImplCopyWithImpl(
      _$InitialPageImpl _value, $Res Function(_$InitialPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialPageImpl implements _InitialPage {
  const _$InitialPageImpl();

  @override
  String toString() {
    return 'ExchangesState.initialState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<Currency> exchanges) sucess,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<Currency> exchanges)? sucess,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<Currency> exchanges)? sucess,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_ExchangesLoading value) loadingState,
    required TResult Function(_ExchangesError value) errorState,
    required TResult Function(_ExchangesSuccess value) sucess,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_ExchangesLoading value)? loadingState,
    TResult? Function(_ExchangesError value)? errorState,
    TResult? Function(_ExchangesSuccess value)? sucess,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_ExchangesLoading value)? loadingState,
    TResult Function(_ExchangesError value)? errorState,
    TResult Function(_ExchangesSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialPage implements ExchangesState {
  const factory _InitialPage() = _$InitialPageImpl;
}

/// @nodoc
abstract class _$$ExchangesLoadingImplCopyWith<$Res> {
  factory _$$ExchangesLoadingImplCopyWith(_$ExchangesLoadingImpl value,
          $Res Function(_$ExchangesLoadingImpl) then) =
      __$$ExchangesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExchangesLoadingImplCopyWithImpl<$Res>
    extends _$ExchangesStateCopyWithImpl<$Res, _$ExchangesLoadingImpl>
    implements _$$ExchangesLoadingImplCopyWith<$Res> {
  __$$ExchangesLoadingImplCopyWithImpl(_$ExchangesLoadingImpl _value,
      $Res Function(_$ExchangesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExchangesLoadingImpl implements _ExchangesLoading {
  const _$ExchangesLoadingImpl();

  @override
  String toString() {
    return 'ExchangesState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExchangesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<Currency> exchanges) sucess,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<Currency> exchanges)? sucess,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<Currency> exchanges)? sucess,
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
    required TResult Function(_ExchangesLoading value) loadingState,
    required TResult Function(_ExchangesError value) errorState,
    required TResult Function(_ExchangesSuccess value) sucess,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_ExchangesLoading value)? loadingState,
    TResult? Function(_ExchangesError value)? errorState,
    TResult? Function(_ExchangesSuccess value)? sucess,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_ExchangesLoading value)? loadingState,
    TResult Function(_ExchangesError value)? errorState,
    TResult Function(_ExchangesSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _ExchangesLoading implements ExchangesState {
  const factory _ExchangesLoading() = _$ExchangesLoadingImpl;
}

/// @nodoc
abstract class _$$ExchangesErrorImplCopyWith<$Res> {
  factory _$$ExchangesErrorImplCopyWith(_$ExchangesErrorImpl value,
          $Res Function(_$ExchangesErrorImpl) then) =
      __$$ExchangesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ExchangesErrorImplCopyWithImpl<$Res>
    extends _$ExchangesStateCopyWithImpl<$Res, _$ExchangesErrorImpl>
    implements _$$ExchangesErrorImplCopyWith<$Res> {
  __$$ExchangesErrorImplCopyWithImpl(
      _$ExchangesErrorImpl _value, $Res Function(_$ExchangesErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ExchangesErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ExchangesErrorImpl implements _ExchangesError {
  const _$ExchangesErrorImpl({this.message = ''});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ExchangesState.errorState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangesErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangesErrorImplCopyWith<_$ExchangesErrorImpl> get copyWith =>
      __$$ExchangesErrorImplCopyWithImpl<_$ExchangesErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<Currency> exchanges) sucess,
  }) {
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<Currency> exchanges)? sucess,
  }) {
    return errorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<Currency> exchanges)? sucess,
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
    required TResult Function(_ExchangesLoading value) loadingState,
    required TResult Function(_ExchangesError value) errorState,
    required TResult Function(_ExchangesSuccess value) sucess,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_ExchangesLoading value)? loadingState,
    TResult? Function(_ExchangesError value)? errorState,
    TResult? Function(_ExchangesSuccess value)? sucess,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_ExchangesLoading value)? loadingState,
    TResult Function(_ExchangesError value)? errorState,
    TResult Function(_ExchangesSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ExchangesError implements ExchangesState {
  const factory _ExchangesError({final String message}) = _$ExchangesErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ExchangesErrorImplCopyWith<_$ExchangesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ExchangesSuccessImplCopyWith<$Res> {
  factory _$$ExchangesSuccessImplCopyWith(_$ExchangesSuccessImpl value,
          $Res Function(_$ExchangesSuccessImpl) then) =
      __$$ExchangesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Currency> exchanges});
}

/// @nodoc
class __$$ExchangesSuccessImplCopyWithImpl<$Res>
    extends _$ExchangesStateCopyWithImpl<$Res, _$ExchangesSuccessImpl>
    implements _$$ExchangesSuccessImplCopyWith<$Res> {
  __$$ExchangesSuccessImplCopyWithImpl(_$ExchangesSuccessImpl _value,
      $Res Function(_$ExchangesSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exchanges = null,
  }) {
    return _then(_$ExchangesSuccessImpl(
      exchanges: null == exchanges
          ? _value._exchanges
          : exchanges // ignore: cast_nullable_to_non_nullable
              as List<Currency>,
    ));
  }
}

/// @nodoc

class _$ExchangesSuccessImpl implements _ExchangesSuccess {
  const _$ExchangesSuccessImpl({final List<Currency> exchanges = const []})
      : _exchanges = exchanges;

  final List<Currency> _exchanges;
  @override
  @JsonKey()
  List<Currency> get exchanges {
    if (_exchanges is EqualUnmodifiableListView) return _exchanges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exchanges);
  }

  @override
  String toString() {
    return 'ExchangesState.sucess(exchanges: $exchanges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangesSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._exchanges, _exchanges));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_exchanges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangesSuccessImplCopyWith<_$ExchangesSuccessImpl> get copyWith =>
      __$$ExchangesSuccessImplCopyWithImpl<_$ExchangesSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<Currency> exchanges) sucess,
  }) {
    return sucess(exchanges);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<Currency> exchanges)? sucess,
  }) {
    return sucess?.call(exchanges);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<Currency> exchanges)? sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(exchanges);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_ExchangesLoading value) loadingState,
    required TResult Function(_ExchangesError value) errorState,
    required TResult Function(_ExchangesSuccess value) sucess,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_ExchangesLoading value)? loadingState,
    TResult? Function(_ExchangesError value)? errorState,
    TResult? Function(_ExchangesSuccess value)? sucess,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_ExchangesLoading value)? loadingState,
    TResult Function(_ExchangesError value)? errorState,
    TResult Function(_ExchangesSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _ExchangesSuccess implements ExchangesState {
  const factory _ExchangesSuccess({final List<Currency> exchanges}) =
      _$ExchangesSuccessImpl;

  List<Currency> get exchanges;
  @JsonKey(ignore: true)
  _$$ExchangesSuccessImplCopyWith<_$ExchangesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
