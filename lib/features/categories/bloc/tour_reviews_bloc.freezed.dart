// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_reviews_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TourReviewsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<ReviewDto> reviews) sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<ReviewDto> reviews)? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<ReviewDto> reviews)? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_TourReviewsLoading value) loadingState,
    required TResult Function(_TourReviewsError value) errorState,
    required TResult Function(_TourReviewsSuccess value) sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_TourReviewsLoading value)? loadingState,
    TResult? Function(_TourReviewsError value)? errorState,
    TResult? Function(_TourReviewsSuccess value)? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_TourReviewsLoading value)? loadingState,
    TResult Function(_TourReviewsError value)? errorState,
    TResult Function(_TourReviewsSuccess value)? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourReviewsStateCopyWith<$Res> {
  factory $TourReviewsStateCopyWith(
          TourReviewsState value, $Res Function(TourReviewsState) then) =
      _$TourReviewsStateCopyWithImpl<$Res, TourReviewsState>;
}

/// @nodoc
class _$TourReviewsStateCopyWithImpl<$Res, $Val extends TourReviewsState>
    implements $TourReviewsStateCopyWith<$Res> {
  _$TourReviewsStateCopyWithImpl(this._value, this._then);

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
    extends _$TourReviewsStateCopyWithImpl<$Res, _$InitialPageImpl>
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
    return 'TourReviewsState.initialState()';
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
    required TResult Function(List<ReviewDto> reviews) sucess,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<ReviewDto> reviews)? sucess,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<ReviewDto> reviews)? sucess,
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
    required TResult Function(_TourReviewsLoading value) loadingState,
    required TResult Function(_TourReviewsError value) errorState,
    required TResult Function(_TourReviewsSuccess value) sucess,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_TourReviewsLoading value)? loadingState,
    TResult? Function(_TourReviewsError value)? errorState,
    TResult? Function(_TourReviewsSuccess value)? sucess,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_TourReviewsLoading value)? loadingState,
    TResult Function(_TourReviewsError value)? errorState,
    TResult Function(_TourReviewsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialPage implements TourReviewsState {
  const factory _InitialPage() = _$InitialPageImpl;
}

/// @nodoc
abstract class _$$TourReviewsLoadingImplCopyWith<$Res> {
  factory _$$TourReviewsLoadingImplCopyWith(_$TourReviewsLoadingImpl value,
          $Res Function(_$TourReviewsLoadingImpl) then) =
      __$$TourReviewsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TourReviewsLoadingImplCopyWithImpl<$Res>
    extends _$TourReviewsStateCopyWithImpl<$Res, _$TourReviewsLoadingImpl>
    implements _$$TourReviewsLoadingImplCopyWith<$Res> {
  __$$TourReviewsLoadingImplCopyWithImpl(_$TourReviewsLoadingImpl _value,
      $Res Function(_$TourReviewsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TourReviewsLoadingImpl implements _TourReviewsLoading {
  const _$TourReviewsLoadingImpl();

  @override
  String toString() {
    return 'TourReviewsState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TourReviewsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<ReviewDto> reviews) sucess,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<ReviewDto> reviews)? sucess,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<ReviewDto> reviews)? sucess,
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
    required TResult Function(_TourReviewsLoading value) loadingState,
    required TResult Function(_TourReviewsError value) errorState,
    required TResult Function(_TourReviewsSuccess value) sucess,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_TourReviewsLoading value)? loadingState,
    TResult? Function(_TourReviewsError value)? errorState,
    TResult? Function(_TourReviewsSuccess value)? sucess,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_TourReviewsLoading value)? loadingState,
    TResult Function(_TourReviewsError value)? errorState,
    TResult Function(_TourReviewsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _TourReviewsLoading implements TourReviewsState {
  const factory _TourReviewsLoading() = _$TourReviewsLoadingImpl;
}

/// @nodoc
abstract class _$$TourReviewsErrorImplCopyWith<$Res> {
  factory _$$TourReviewsErrorImplCopyWith(_$TourReviewsErrorImpl value,
          $Res Function(_$TourReviewsErrorImpl) then) =
      __$$TourReviewsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TourReviewsErrorImplCopyWithImpl<$Res>
    extends _$TourReviewsStateCopyWithImpl<$Res, _$TourReviewsErrorImpl>
    implements _$$TourReviewsErrorImplCopyWith<$Res> {
  __$$TourReviewsErrorImplCopyWithImpl(_$TourReviewsErrorImpl _value,
      $Res Function(_$TourReviewsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TourReviewsErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TourReviewsErrorImpl implements _TourReviewsError {
  const _$TourReviewsErrorImpl({this.message = ''});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'TourReviewsState.errorState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourReviewsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourReviewsErrorImplCopyWith<_$TourReviewsErrorImpl> get copyWith =>
      __$$TourReviewsErrorImplCopyWithImpl<_$TourReviewsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<ReviewDto> reviews) sucess,
  }) {
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<ReviewDto> reviews)? sucess,
  }) {
    return errorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<ReviewDto> reviews)? sucess,
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
    required TResult Function(_TourReviewsLoading value) loadingState,
    required TResult Function(_TourReviewsError value) errorState,
    required TResult Function(_TourReviewsSuccess value) sucess,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_TourReviewsLoading value)? loadingState,
    TResult? Function(_TourReviewsError value)? errorState,
    TResult? Function(_TourReviewsSuccess value)? sucess,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_TourReviewsLoading value)? loadingState,
    TResult Function(_TourReviewsError value)? errorState,
    TResult Function(_TourReviewsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _TourReviewsError implements TourReviewsState {
  const factory _TourReviewsError({final String message}) =
      _$TourReviewsErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$TourReviewsErrorImplCopyWith<_$TourReviewsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TourReviewsSuccessImplCopyWith<$Res> {
  factory _$$TourReviewsSuccessImplCopyWith(_$TourReviewsSuccessImpl value,
          $Res Function(_$TourReviewsSuccessImpl) then) =
      __$$TourReviewsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ReviewDto> reviews});
}

/// @nodoc
class __$$TourReviewsSuccessImplCopyWithImpl<$Res>
    extends _$TourReviewsStateCopyWithImpl<$Res, _$TourReviewsSuccessImpl>
    implements _$$TourReviewsSuccessImplCopyWith<$Res> {
  __$$TourReviewsSuccessImplCopyWithImpl(_$TourReviewsSuccessImpl _value,
      $Res Function(_$TourReviewsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviews = null,
  }) {
    return _then(_$TourReviewsSuccessImpl(
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewDto>,
    ));
  }
}

/// @nodoc

class _$TourReviewsSuccessImpl implements _TourReviewsSuccess {
  const _$TourReviewsSuccessImpl({final List<ReviewDto> reviews = const []})
      : _reviews = reviews;

  final List<ReviewDto> _reviews;
  @override
  @JsonKey()
  List<ReviewDto> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'TourReviewsState.sucess(reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourReviewsSuccessImpl &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourReviewsSuccessImplCopyWith<_$TourReviewsSuccessImpl> get copyWith =>
      __$$TourReviewsSuccessImplCopyWithImpl<_$TourReviewsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<ReviewDto> reviews) sucess,
  }) {
    return sucess(reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<ReviewDto> reviews)? sucess,
  }) {
    return sucess?.call(reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<ReviewDto> reviews)? sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_TourReviewsLoading value) loadingState,
    required TResult Function(_TourReviewsError value) errorState,
    required TResult Function(_TourReviewsSuccess value) sucess,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_TourReviewsLoading value)? loadingState,
    TResult? Function(_TourReviewsError value)? errorState,
    TResult? Function(_TourReviewsSuccess value)? sucess,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_TourReviewsLoading value)? loadingState,
    TResult Function(_TourReviewsError value)? errorState,
    TResult Function(_TourReviewsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _TourReviewsSuccess implements TourReviewsState {
  const factory _TourReviewsSuccess({final List<ReviewDto> reviews}) =
      _$TourReviewsSuccessImpl;

  List<ReviewDto> get reviews;
  @JsonKey(ignore: true)
  _$$TourReviewsSuccessImplCopyWith<_$TourReviewsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
