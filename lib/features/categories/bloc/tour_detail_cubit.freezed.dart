// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TourDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(TourDto tour) sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(TourDto tour)? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(TourDto tour)? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_TourDetailsLoading value) loadingState,
    required TResult Function(_TourDetailsError value) errorState,
    required TResult Function(_TourDetailsSuccess value) sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_TourDetailsLoading value)? loadingState,
    TResult? Function(_TourDetailsError value)? errorState,
    TResult? Function(_TourDetailsSuccess value)? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_TourDetailsLoading value)? loadingState,
    TResult Function(_TourDetailsError value)? errorState,
    TResult Function(_TourDetailsSuccess value)? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourDetailsStateCopyWith<$Res> {
  factory $TourDetailsStateCopyWith(
          TourDetailsState value, $Res Function(TourDetailsState) then) =
      _$TourDetailsStateCopyWithImpl<$Res, TourDetailsState>;
}

/// @nodoc
class _$TourDetailsStateCopyWithImpl<$Res, $Val extends TourDetailsState>
    implements $TourDetailsStateCopyWith<$Res> {
  _$TourDetailsStateCopyWithImpl(this._value, this._then);

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
    extends _$TourDetailsStateCopyWithImpl<$Res, _$InitialPageImpl>
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
    return 'TourDetailsState.initialState()';
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
    required TResult Function(TourDto tour) sucess,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(TourDto tour)? sucess,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(TourDto tour)? sucess,
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
    required TResult Function(_TourDetailsLoading value) loadingState,
    required TResult Function(_TourDetailsError value) errorState,
    required TResult Function(_TourDetailsSuccess value) sucess,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_TourDetailsLoading value)? loadingState,
    TResult? Function(_TourDetailsError value)? errorState,
    TResult? Function(_TourDetailsSuccess value)? sucess,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_TourDetailsLoading value)? loadingState,
    TResult Function(_TourDetailsError value)? errorState,
    TResult Function(_TourDetailsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialPage implements TourDetailsState {
  const factory _InitialPage() = _$InitialPageImpl;
}

/// @nodoc
abstract class _$$TourDetailsLoadingImplCopyWith<$Res> {
  factory _$$TourDetailsLoadingImplCopyWith(_$TourDetailsLoadingImpl value,
          $Res Function(_$TourDetailsLoadingImpl) then) =
      __$$TourDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TourDetailsLoadingImplCopyWithImpl<$Res>
    extends _$TourDetailsStateCopyWithImpl<$Res, _$TourDetailsLoadingImpl>
    implements _$$TourDetailsLoadingImplCopyWith<$Res> {
  __$$TourDetailsLoadingImplCopyWithImpl(_$TourDetailsLoadingImpl _value,
      $Res Function(_$TourDetailsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TourDetailsLoadingImpl implements _TourDetailsLoading {
  const _$TourDetailsLoadingImpl();

  @override
  String toString() {
    return 'TourDetailsState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TourDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(TourDto tour) sucess,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(TourDto tour)? sucess,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(TourDto tour)? sucess,
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
    required TResult Function(_TourDetailsLoading value) loadingState,
    required TResult Function(_TourDetailsError value) errorState,
    required TResult Function(_TourDetailsSuccess value) sucess,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_TourDetailsLoading value)? loadingState,
    TResult? Function(_TourDetailsError value)? errorState,
    TResult? Function(_TourDetailsSuccess value)? sucess,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_TourDetailsLoading value)? loadingState,
    TResult Function(_TourDetailsError value)? errorState,
    TResult Function(_TourDetailsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _TourDetailsLoading implements TourDetailsState {
  const factory _TourDetailsLoading() = _$TourDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$TourDetailsErrorImplCopyWith<$Res> {
  factory _$$TourDetailsErrorImplCopyWith(_$TourDetailsErrorImpl value,
          $Res Function(_$TourDetailsErrorImpl) then) =
      __$$TourDetailsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TourDetailsErrorImplCopyWithImpl<$Res>
    extends _$TourDetailsStateCopyWithImpl<$Res, _$TourDetailsErrorImpl>
    implements _$$TourDetailsErrorImplCopyWith<$Res> {
  __$$TourDetailsErrorImplCopyWithImpl(_$TourDetailsErrorImpl _value,
      $Res Function(_$TourDetailsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TourDetailsErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TourDetailsErrorImpl implements _TourDetailsError {
  const _$TourDetailsErrorImpl({this.message = ''});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'TourDetailsState.errorState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourDetailsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourDetailsErrorImplCopyWith<_$TourDetailsErrorImpl> get copyWith =>
      __$$TourDetailsErrorImplCopyWithImpl<_$TourDetailsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(TourDto tour) sucess,
  }) {
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(TourDto tour)? sucess,
  }) {
    return errorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(TourDto tour)? sucess,
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
    required TResult Function(_TourDetailsLoading value) loadingState,
    required TResult Function(_TourDetailsError value) errorState,
    required TResult Function(_TourDetailsSuccess value) sucess,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_TourDetailsLoading value)? loadingState,
    TResult? Function(_TourDetailsError value)? errorState,
    TResult? Function(_TourDetailsSuccess value)? sucess,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_TourDetailsLoading value)? loadingState,
    TResult Function(_TourDetailsError value)? errorState,
    TResult Function(_TourDetailsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _TourDetailsError implements TourDetailsState {
  const factory _TourDetailsError({final String message}) =
      _$TourDetailsErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$TourDetailsErrorImplCopyWith<_$TourDetailsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TourDetailsSuccessImplCopyWith<$Res> {
  factory _$$TourDetailsSuccessImplCopyWith(_$TourDetailsSuccessImpl value,
          $Res Function(_$TourDetailsSuccessImpl) then) =
      __$$TourDetailsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TourDto tour});

  $TourDtoCopyWith<$Res> get tour;
}

/// @nodoc
class __$$TourDetailsSuccessImplCopyWithImpl<$Res>
    extends _$TourDetailsStateCopyWithImpl<$Res, _$TourDetailsSuccessImpl>
    implements _$$TourDetailsSuccessImplCopyWith<$Res> {
  __$$TourDetailsSuccessImplCopyWithImpl(_$TourDetailsSuccessImpl _value,
      $Res Function(_$TourDetailsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tour = null,
  }) {
    return _then(_$TourDetailsSuccessImpl(
      null == tour
          ? _value.tour
          : tour // ignore: cast_nullable_to_non_nullable
              as TourDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TourDtoCopyWith<$Res> get tour {
    return $TourDtoCopyWith<$Res>(_value.tour, (value) {
      return _then(_value.copyWith(tour: value));
    });
  }
}

/// @nodoc

class _$TourDetailsSuccessImpl implements _TourDetailsSuccess {
  const _$TourDetailsSuccessImpl(this.tour);

  @override
  final TourDto tour;

  @override
  String toString() {
    return 'TourDetailsState.sucess(tour: $tour)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourDetailsSuccessImpl &&
            (identical(other.tour, tour) || other.tour == tour));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tour);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourDetailsSuccessImplCopyWith<_$TourDetailsSuccessImpl> get copyWith =>
      __$$TourDetailsSuccessImplCopyWithImpl<_$TourDetailsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(TourDto tour) sucess,
  }) {
    return sucess(tour);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(TourDto tour)? sucess,
  }) {
    return sucess?.call(tour);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(TourDto tour)? sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(tour);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_TourDetailsLoading value) loadingState,
    required TResult Function(_TourDetailsError value) errorState,
    required TResult Function(_TourDetailsSuccess value) sucess,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_TourDetailsLoading value)? loadingState,
    TResult? Function(_TourDetailsError value)? errorState,
    TResult? Function(_TourDetailsSuccess value)? sucess,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_TourDetailsLoading value)? loadingState,
    TResult Function(_TourDetailsError value)? errorState,
    TResult Function(_TourDetailsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _TourDetailsSuccess implements TourDetailsState {
  const factory _TourDetailsSuccess(final TourDto tour) =
      _$TourDetailsSuccessImpl;

  TourDto get tour;
  @JsonKey(ignore: true)
  _$$TourDetailsSuccessImplCopyWith<_$TourDetailsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
