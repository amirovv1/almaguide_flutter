// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_tour_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyTourState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<TourDto> tours) sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<TourDto> tours)? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<TourDto> tours)? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_MyTourListLoading value) loadingState,
    required TResult Function(_MyTourError value) errorState,
    required TResult Function(_MyTourSuccess value) sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_MyTourListLoading value)? loadingState,
    TResult? Function(_MyTourError value)? errorState,
    TResult? Function(_MyTourSuccess value)? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_MyTourListLoading value)? loadingState,
    TResult Function(_MyTourError value)? errorState,
    TResult Function(_MyTourSuccess value)? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyTourStateCopyWith<$Res> {
  factory $MyTourStateCopyWith(
          MyTourState value, $Res Function(MyTourState) then) =
      _$MyTourStateCopyWithImpl<$Res, MyTourState>;
}

/// @nodoc
class _$MyTourStateCopyWithImpl<$Res, $Val extends MyTourState>
    implements $MyTourStateCopyWith<$Res> {
  _$MyTourStateCopyWithImpl(this._value, this._then);

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
    extends _$MyTourStateCopyWithImpl<$Res, _$InitialPageImpl>
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
    return 'MyTourState.initialState()';
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
    required TResult Function(List<TourDto> tours) sucess,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<TourDto> tours)? sucess,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<TourDto> tours)? sucess,
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
    required TResult Function(_MyTourListLoading value) loadingState,
    required TResult Function(_MyTourError value) errorState,
    required TResult Function(_MyTourSuccess value) sucess,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_MyTourListLoading value)? loadingState,
    TResult? Function(_MyTourError value)? errorState,
    TResult? Function(_MyTourSuccess value)? sucess,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_MyTourListLoading value)? loadingState,
    TResult Function(_MyTourError value)? errorState,
    TResult Function(_MyTourSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialPage implements MyTourState {
  const factory _InitialPage() = _$InitialPageImpl;
}

/// @nodoc
abstract class _$$MyTourListLoadingImplCopyWith<$Res> {
  factory _$$MyTourListLoadingImplCopyWith(_$MyTourListLoadingImpl value,
          $Res Function(_$MyTourListLoadingImpl) then) =
      __$$MyTourListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MyTourListLoadingImplCopyWithImpl<$Res>
    extends _$MyTourStateCopyWithImpl<$Res, _$MyTourListLoadingImpl>
    implements _$$MyTourListLoadingImplCopyWith<$Res> {
  __$$MyTourListLoadingImplCopyWithImpl(_$MyTourListLoadingImpl _value,
      $Res Function(_$MyTourListLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MyTourListLoadingImpl implements _MyTourListLoading {
  const _$MyTourListLoadingImpl();

  @override
  String toString() {
    return 'MyTourState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MyTourListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<TourDto> tours) sucess,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<TourDto> tours)? sucess,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<TourDto> tours)? sucess,
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
    required TResult Function(_MyTourListLoading value) loadingState,
    required TResult Function(_MyTourError value) errorState,
    required TResult Function(_MyTourSuccess value) sucess,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_MyTourListLoading value)? loadingState,
    TResult? Function(_MyTourError value)? errorState,
    TResult? Function(_MyTourSuccess value)? sucess,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_MyTourListLoading value)? loadingState,
    TResult Function(_MyTourError value)? errorState,
    TResult Function(_MyTourSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _MyTourListLoading implements MyTourState {
  const factory _MyTourListLoading() = _$MyTourListLoadingImpl;
}

/// @nodoc
abstract class _$$MyTourErrorImplCopyWith<$Res> {
  factory _$$MyTourErrorImplCopyWith(
          _$MyTourErrorImpl value, $Res Function(_$MyTourErrorImpl) then) =
      __$$MyTourErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MyTourErrorImplCopyWithImpl<$Res>
    extends _$MyTourStateCopyWithImpl<$Res, _$MyTourErrorImpl>
    implements _$$MyTourErrorImplCopyWith<$Res> {
  __$$MyTourErrorImplCopyWithImpl(
      _$MyTourErrorImpl _value, $Res Function(_$MyTourErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MyTourErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MyTourErrorImpl implements _MyTourError {
  const _$MyTourErrorImpl({this.message = ''});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'MyTourState.errorState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyTourErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyTourErrorImplCopyWith<_$MyTourErrorImpl> get copyWith =>
      __$$MyTourErrorImplCopyWithImpl<_$MyTourErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<TourDto> tours) sucess,
  }) {
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<TourDto> tours)? sucess,
  }) {
    return errorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<TourDto> tours)? sucess,
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
    required TResult Function(_MyTourListLoading value) loadingState,
    required TResult Function(_MyTourError value) errorState,
    required TResult Function(_MyTourSuccess value) sucess,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_MyTourListLoading value)? loadingState,
    TResult? Function(_MyTourError value)? errorState,
    TResult? Function(_MyTourSuccess value)? sucess,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_MyTourListLoading value)? loadingState,
    TResult Function(_MyTourError value)? errorState,
    TResult Function(_MyTourSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _MyTourError implements MyTourState {
  const factory _MyTourError({final String message}) = _$MyTourErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$MyTourErrorImplCopyWith<_$MyTourErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MyTourSuccessImplCopyWith<$Res> {
  factory _$$MyTourSuccessImplCopyWith(
          _$MyTourSuccessImpl value, $Res Function(_$MyTourSuccessImpl) then) =
      __$$MyTourSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TourDto> tours});
}

/// @nodoc
class __$$MyTourSuccessImplCopyWithImpl<$Res>
    extends _$MyTourStateCopyWithImpl<$Res, _$MyTourSuccessImpl>
    implements _$$MyTourSuccessImplCopyWith<$Res> {
  __$$MyTourSuccessImplCopyWithImpl(
      _$MyTourSuccessImpl _value, $Res Function(_$MyTourSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tours = null,
  }) {
    return _then(_$MyTourSuccessImpl(
      tours: null == tours
          ? _value._tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<TourDto>,
    ));
  }
}

/// @nodoc

class _$MyTourSuccessImpl implements _MyTourSuccess {
  const _$MyTourSuccessImpl({final List<TourDto> tours = const []})
      : _tours = tours;

  final List<TourDto> _tours;
  @override
  @JsonKey()
  List<TourDto> get tours {
    if (_tours is EqualUnmodifiableListView) return _tours;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tours);
  }

  @override
  String toString() {
    return 'MyTourState.sucess(tours: $tours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyTourSuccessImpl &&
            const DeepCollectionEquality().equals(other._tours, _tours));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyTourSuccessImplCopyWith<_$MyTourSuccessImpl> get copyWith =>
      __$$MyTourSuccessImplCopyWithImpl<_$MyTourSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<TourDto> tours) sucess,
  }) {
    return sucess(tours);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<TourDto> tours)? sucess,
  }) {
    return sucess?.call(tours);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<TourDto> tours)? sucess,
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
    required TResult Function(_MyTourListLoading value) loadingState,
    required TResult Function(_MyTourError value) errorState,
    required TResult Function(_MyTourSuccess value) sucess,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_MyTourListLoading value)? loadingState,
    TResult? Function(_MyTourError value)? errorState,
    TResult? Function(_MyTourSuccess value)? sucess,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_MyTourListLoading value)? loadingState,
    TResult Function(_MyTourError value)? errorState,
    TResult Function(_MyTourSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _MyTourSuccess implements MyTourState {
  const factory _MyTourSuccess({final List<TourDto> tours}) =
      _$MyTourSuccessImpl;

  List<TourDto> get tours;
  @JsonKey(ignore: true)
  _$$MyTourSuccessImplCopyWith<_$MyTourSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
