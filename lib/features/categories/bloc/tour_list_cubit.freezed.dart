// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tour_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TourListState {
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
    required TResult Function(_TourListLoading value) loadingState,
    required TResult Function(_TourListError value) errorState,
    required TResult Function(_TourListSuccess value) sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_TourListLoading value)? loadingState,
    TResult? Function(_TourListError value)? errorState,
    TResult? Function(_TourListSuccess value)? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_TourListLoading value)? loadingState,
    TResult Function(_TourListError value)? errorState,
    TResult Function(_TourListSuccess value)? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourListStateCopyWith<$Res> {
  factory $TourListStateCopyWith(
          TourListState value, $Res Function(TourListState) then) =
      _$TourListStateCopyWithImpl<$Res, TourListState>;
}

/// @nodoc
class _$TourListStateCopyWithImpl<$Res, $Val extends TourListState>
    implements $TourListStateCopyWith<$Res> {
  _$TourListStateCopyWithImpl(this._value, this._then);

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
    extends _$TourListStateCopyWithImpl<$Res, _$InitialPageImpl>
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
    return 'TourListState.initialState()';
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
    required TResult Function(_TourListLoading value) loadingState,
    required TResult Function(_TourListError value) errorState,
    required TResult Function(_TourListSuccess value) sucess,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_TourListLoading value)? loadingState,
    TResult? Function(_TourListError value)? errorState,
    TResult? Function(_TourListSuccess value)? sucess,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_TourListLoading value)? loadingState,
    TResult Function(_TourListError value)? errorState,
    TResult Function(_TourListSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialPage implements TourListState {
  const factory _InitialPage() = _$InitialPageImpl;
}

/// @nodoc
abstract class _$$TourListLoadingImplCopyWith<$Res> {
  factory _$$TourListLoadingImplCopyWith(_$TourListLoadingImpl value,
          $Res Function(_$TourListLoadingImpl) then) =
      __$$TourListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TourListLoadingImplCopyWithImpl<$Res>
    extends _$TourListStateCopyWithImpl<$Res, _$TourListLoadingImpl>
    implements _$$TourListLoadingImplCopyWith<$Res> {
  __$$TourListLoadingImplCopyWithImpl(
      _$TourListLoadingImpl _value, $Res Function(_$TourListLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TourListLoadingImpl implements _TourListLoading {
  const _$TourListLoadingImpl();

  @override
  String toString() {
    return 'TourListState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TourListLoadingImpl);
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
    required TResult Function(_TourListLoading value) loadingState,
    required TResult Function(_TourListError value) errorState,
    required TResult Function(_TourListSuccess value) sucess,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_TourListLoading value)? loadingState,
    TResult? Function(_TourListError value)? errorState,
    TResult? Function(_TourListSuccess value)? sucess,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_TourListLoading value)? loadingState,
    TResult Function(_TourListError value)? errorState,
    TResult Function(_TourListSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _TourListLoading implements TourListState {
  const factory _TourListLoading() = _$TourListLoadingImpl;
}

/// @nodoc
abstract class _$$TourListErrorImplCopyWith<$Res> {
  factory _$$TourListErrorImplCopyWith(
          _$TourListErrorImpl value, $Res Function(_$TourListErrorImpl) then) =
      __$$TourListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TourListErrorImplCopyWithImpl<$Res>
    extends _$TourListStateCopyWithImpl<$Res, _$TourListErrorImpl>
    implements _$$TourListErrorImplCopyWith<$Res> {
  __$$TourListErrorImplCopyWithImpl(
      _$TourListErrorImpl _value, $Res Function(_$TourListErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TourListErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TourListErrorImpl implements _TourListError {
  const _$TourListErrorImpl({this.message = ''});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'TourListState.errorState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourListErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourListErrorImplCopyWith<_$TourListErrorImpl> get copyWith =>
      __$$TourListErrorImplCopyWithImpl<_$TourListErrorImpl>(this, _$identity);

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
    required TResult Function(_TourListLoading value) loadingState,
    required TResult Function(_TourListError value) errorState,
    required TResult Function(_TourListSuccess value) sucess,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_TourListLoading value)? loadingState,
    TResult? Function(_TourListError value)? errorState,
    TResult? Function(_TourListSuccess value)? sucess,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_TourListLoading value)? loadingState,
    TResult Function(_TourListError value)? errorState,
    TResult Function(_TourListSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _TourListError implements TourListState {
  const factory _TourListError({final String message}) = _$TourListErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$TourListErrorImplCopyWith<_$TourListErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TourListSuccessImplCopyWith<$Res> {
  factory _$$TourListSuccessImplCopyWith(_$TourListSuccessImpl value,
          $Res Function(_$TourListSuccessImpl) then) =
      __$$TourListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TourDto> tours});
}

/// @nodoc
class __$$TourListSuccessImplCopyWithImpl<$Res>
    extends _$TourListStateCopyWithImpl<$Res, _$TourListSuccessImpl>
    implements _$$TourListSuccessImplCopyWith<$Res> {
  __$$TourListSuccessImplCopyWithImpl(
      _$TourListSuccessImpl _value, $Res Function(_$TourListSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tours = null,
  }) {
    return _then(_$TourListSuccessImpl(
      tours: null == tours
          ? _value._tours
          : tours // ignore: cast_nullable_to_non_nullable
              as List<TourDto>,
    ));
  }
}

/// @nodoc

class _$TourListSuccessImpl implements _TourListSuccess {
  const _$TourListSuccessImpl({final List<TourDto> tours = const []})
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
    return 'TourListState.sucess(tours: $tours)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourListSuccessImpl &&
            const DeepCollectionEquality().equals(other._tours, _tours));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tours));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TourListSuccessImplCopyWith<_$TourListSuccessImpl> get copyWith =>
      __$$TourListSuccessImplCopyWithImpl<_$TourListSuccessImpl>(
          this, _$identity);

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
    required TResult Function(_TourListLoading value) loadingState,
    required TResult Function(_TourListError value) errorState,
    required TResult Function(_TourListSuccess value) sucess,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_TourListLoading value)? loadingState,
    TResult? Function(_TourListError value)? errorState,
    TResult? Function(_TourListSuccess value)? sucess,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_TourListLoading value)? loadingState,
    TResult Function(_TourListError value)? errorState,
    TResult Function(_TourListSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _TourListSuccess implements TourListState {
  const factory _TourListSuccess({final List<TourDto> tours}) =
      _$TourListSuccessImpl;

  List<TourDto> get tours;
  @JsonKey(ignore: true)
  _$$TourListSuccessImplCopyWith<_$TourListSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
