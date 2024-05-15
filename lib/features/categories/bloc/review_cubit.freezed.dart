// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<ReviewDto> tours) sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<ReviewDto> tours)? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<ReviewDto> tours)? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_ReviewsLoading value) loadingState,
    required TResult Function(_ReviewsError value) errorState,
    required TResult Function(_ReviewsSuccess value) sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_ReviewsLoading value)? loadingState,
    TResult? Function(_ReviewsError value)? errorState,
    TResult? Function(_ReviewsSuccess value)? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_ReviewsLoading value)? loadingState,
    TResult Function(_ReviewsError value)? errorState,
    TResult Function(_ReviewsSuccess value)? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsStateCopyWith<$Res> {
  factory $ReviewsStateCopyWith(
          ReviewsState value, $Res Function(ReviewsState) then) =
      _$ReviewsStateCopyWithImpl<$Res, ReviewsState>;
}

/// @nodoc
class _$ReviewsStateCopyWithImpl<$Res, $Val extends ReviewsState>
    implements $ReviewsStateCopyWith<$Res> {
  _$ReviewsStateCopyWithImpl(this._value, this._then);

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
    extends _$ReviewsStateCopyWithImpl<$Res, _$InitialPageImpl>
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
    return 'ReviewsState.initialState()';
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
    required TResult Function(List<ReviewDto> tours) sucess,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<ReviewDto> tours)? sucess,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<ReviewDto> tours)? sucess,
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
    required TResult Function(_ReviewsLoading value) loadingState,
    required TResult Function(_ReviewsError value) errorState,
    required TResult Function(_ReviewsSuccess value) sucess,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_ReviewsLoading value)? loadingState,
    TResult? Function(_ReviewsError value)? errorState,
    TResult? Function(_ReviewsSuccess value)? sucess,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_ReviewsLoading value)? loadingState,
    TResult Function(_ReviewsError value)? errorState,
    TResult Function(_ReviewsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialPage implements ReviewsState {
  const factory _InitialPage() = _$InitialPageImpl;
}

/// @nodoc
abstract class _$$ReviewsLoadingImplCopyWith<$Res> {
  factory _$$ReviewsLoadingImplCopyWith(_$ReviewsLoadingImpl value,
          $Res Function(_$ReviewsLoadingImpl) then) =
      __$$ReviewsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewsLoadingImplCopyWithImpl<$Res>
    extends _$ReviewsStateCopyWithImpl<$Res, _$ReviewsLoadingImpl>
    implements _$$ReviewsLoadingImplCopyWith<$Res> {
  __$$ReviewsLoadingImplCopyWithImpl(
      _$ReviewsLoadingImpl _value, $Res Function(_$ReviewsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewsLoadingImpl implements _ReviewsLoading {
  const _$ReviewsLoadingImpl();

  @override
  String toString() {
    return 'ReviewsState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReviewsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<ReviewDto> tours) sucess,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<ReviewDto> tours)? sucess,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<ReviewDto> tours)? sucess,
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
    required TResult Function(_ReviewsLoading value) loadingState,
    required TResult Function(_ReviewsError value) errorState,
    required TResult Function(_ReviewsSuccess value) sucess,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_ReviewsLoading value)? loadingState,
    TResult? Function(_ReviewsError value)? errorState,
    TResult? Function(_ReviewsSuccess value)? sucess,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_ReviewsLoading value)? loadingState,
    TResult Function(_ReviewsError value)? errorState,
    TResult Function(_ReviewsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _ReviewsLoading implements ReviewsState {
  const factory _ReviewsLoading() = _$ReviewsLoadingImpl;
}

/// @nodoc
abstract class _$$ReviewsErrorImplCopyWith<$Res> {
  factory _$$ReviewsErrorImplCopyWith(
          _$ReviewsErrorImpl value, $Res Function(_$ReviewsErrorImpl) then) =
      __$$ReviewsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ReviewsErrorImplCopyWithImpl<$Res>
    extends _$ReviewsStateCopyWithImpl<$Res, _$ReviewsErrorImpl>
    implements _$$ReviewsErrorImplCopyWith<$Res> {
  __$$ReviewsErrorImplCopyWithImpl(
      _$ReviewsErrorImpl _value, $Res Function(_$ReviewsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ReviewsErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReviewsErrorImpl implements _ReviewsError {
  const _$ReviewsErrorImpl({this.message = ''});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ReviewsState.errorState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewsErrorImplCopyWith<_$ReviewsErrorImpl> get copyWith =>
      __$$ReviewsErrorImplCopyWithImpl<_$ReviewsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<ReviewDto> tours) sucess,
  }) {
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<ReviewDto> tours)? sucess,
  }) {
    return errorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<ReviewDto> tours)? sucess,
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
    required TResult Function(_ReviewsLoading value) loadingState,
    required TResult Function(_ReviewsError value) errorState,
    required TResult Function(_ReviewsSuccess value) sucess,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_ReviewsLoading value)? loadingState,
    TResult? Function(_ReviewsError value)? errorState,
    TResult? Function(_ReviewsSuccess value)? sucess,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_ReviewsLoading value)? loadingState,
    TResult Function(_ReviewsError value)? errorState,
    TResult Function(_ReviewsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ReviewsError implements ReviewsState {
  const factory _ReviewsError({final String message}) = _$ReviewsErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ReviewsErrorImplCopyWith<_$ReviewsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewsSuccessImplCopyWith<$Res> {
  factory _$$ReviewsSuccessImplCopyWith(_$ReviewsSuccessImpl value,
          $Res Function(_$ReviewsSuccessImpl) then) =
      __$$ReviewsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ReviewDto> tours});
}

/// @nodoc
class __$$ReviewsSuccessImplCopyWithImpl<$Res>
    extends _$ReviewsStateCopyWithImpl<$Res, _$ReviewsSuccessImpl>
    implements _$$ReviewsSuccessImplCopyWith<$Res> {
  __$$ReviewsSuccessImplCopyWithImpl(
      _$ReviewsSuccessImpl _value, $Res Function(_$ReviewsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tours = null,
  }) {
    return _then(_$ReviewsSuccessImpl(
      tours: null == tours
          ? _value._tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<ReviewDto>,
    ));
  }
}

/// @nodoc

class _$ReviewsSuccessImpl implements _ReviewsSuccess {
  const _$ReviewsSuccessImpl({final List<ReviewDto> tours = const []})
      : _tours = tours;

  final List<ReviewDto> _tours;
  @override
  @JsonKey()
  List<ReviewDto> get tours {
    if (_tours is EqualUnmodifiableListView) return _tours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tours);
  }

  @override
  String toString() {
    return 'ReviewsState.sucess(tours: $tours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewsSuccessImpl &&
            const DeepCollectionEquality().equals(other._tours, _tours));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewsSuccessImplCopyWith<_$ReviewsSuccessImpl> get copyWith =>
      __$$ReviewsSuccessImplCopyWithImpl<_$ReviewsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<ReviewDto> tours) sucess,
  }) {
    return sucess(tours);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<ReviewDto> tours)? sucess,
  }) {
    return sucess?.call(tours);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<ReviewDto> tours)? sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(tours);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_ReviewsLoading value) loadingState,
    required TResult Function(_ReviewsError value) errorState,
    required TResult Function(_ReviewsSuccess value) sucess,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_ReviewsLoading value)? loadingState,
    TResult? Function(_ReviewsError value)? errorState,
    TResult? Function(_ReviewsSuccess value)? sucess,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_ReviewsLoading value)? loadingState,
    TResult Function(_ReviewsError value)? errorState,
    TResult Function(_ReviewsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _ReviewsSuccess implements ReviewsState {
  const factory _ReviewsSuccess({final List<ReviewDto> tours}) =
      _$ReviewsSuccessImpl;

  List<ReviewDto> get tours;
  @JsonKey(ignore: true)
  _$$ReviewsSuccessImplCopyWith<_$ReviewsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
