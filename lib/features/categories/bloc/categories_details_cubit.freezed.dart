// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoriesDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<AttractionDto> attractions,
            List<SubcategoryDto> subs, OrderModal orderType)
        sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<AttractionDto> attractions,
            List<SubcategoryDto> subs, OrderModal orderType)?
        sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<AttractionDto> attractions, List<SubcategoryDto> subs,
            OrderModal orderType)?
        sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_CategoriesDetailsLoading value) loadingState,
    required TResult Function(_CategoriesDetailsError value) errorState,
    required TResult Function(_CategoriesDetailsSuccess value) sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_CategoriesDetailsLoading value)? loadingState,
    TResult? Function(_CategoriesDetailsError value)? errorState,
    TResult? Function(_CategoriesDetailsSuccess value)? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_CategoriesDetailsLoading value)? loadingState,
    TResult Function(_CategoriesDetailsError value)? errorState,
    TResult Function(_CategoriesDetailsSuccess value)? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesDetailsStateCopyWith<$Res> {
  factory $CategoriesDetailsStateCopyWith(CategoriesDetailsState value,
          $Res Function(CategoriesDetailsState) then) =
      _$CategoriesDetailsStateCopyWithImpl<$Res, CategoriesDetailsState>;
}

/// @nodoc
class _$CategoriesDetailsStateCopyWithImpl<$Res,
        $Val extends CategoriesDetailsState>
    implements $CategoriesDetailsStateCopyWith<$Res> {
  _$CategoriesDetailsStateCopyWithImpl(this._value, this._then);

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
    extends _$CategoriesDetailsStateCopyWithImpl<$Res, _$InitialPageImpl>
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
    return 'CategoriesDetailsState.initialState()';
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
    required TResult Function(List<AttractionDto> attractions,
            List<SubcategoryDto> subs, OrderModal orderType)
        sucess,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<AttractionDto> attractions,
            List<SubcategoryDto> subs, OrderModal orderType)?
        sucess,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<AttractionDto> attractions, List<SubcategoryDto> subs,
            OrderModal orderType)?
        sucess,
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
    required TResult Function(_CategoriesDetailsLoading value) loadingState,
    required TResult Function(_CategoriesDetailsError value) errorState,
    required TResult Function(_CategoriesDetailsSuccess value) sucess,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_CategoriesDetailsLoading value)? loadingState,
    TResult? Function(_CategoriesDetailsError value)? errorState,
    TResult? Function(_CategoriesDetailsSuccess value)? sucess,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_CategoriesDetailsLoading value)? loadingState,
    TResult Function(_CategoriesDetailsError value)? errorState,
    TResult Function(_CategoriesDetailsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialPage implements CategoriesDetailsState {
  const factory _InitialPage() = _$InitialPageImpl;
}

/// @nodoc
abstract class _$$CategoriesDetailsLoadingImplCopyWith<$Res> {
  factory _$$CategoriesDetailsLoadingImplCopyWith(
          _$CategoriesDetailsLoadingImpl value,
          $Res Function(_$CategoriesDetailsLoadingImpl) then) =
      __$$CategoriesDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoriesDetailsLoadingImplCopyWithImpl<$Res>
    extends _$CategoriesDetailsStateCopyWithImpl<$Res,
        _$CategoriesDetailsLoadingImpl>
    implements _$$CategoriesDetailsLoadingImplCopyWith<$Res> {
  __$$CategoriesDetailsLoadingImplCopyWithImpl(
      _$CategoriesDetailsLoadingImpl _value,
      $Res Function(_$CategoriesDetailsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoriesDetailsLoadingImpl implements _CategoriesDetailsLoading {
  const _$CategoriesDetailsLoadingImpl();

  @override
  String toString() {
    return 'CategoriesDetailsState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<AttractionDto> attractions,
            List<SubcategoryDto> subs, OrderModal orderType)
        sucess,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<AttractionDto> attractions,
            List<SubcategoryDto> subs, OrderModal orderType)?
        sucess,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<AttractionDto> attractions, List<SubcategoryDto> subs,
            OrderModal orderType)?
        sucess,
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
    required TResult Function(_CategoriesDetailsLoading value) loadingState,
    required TResult Function(_CategoriesDetailsError value) errorState,
    required TResult Function(_CategoriesDetailsSuccess value) sucess,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_CategoriesDetailsLoading value)? loadingState,
    TResult? Function(_CategoriesDetailsError value)? errorState,
    TResult? Function(_CategoriesDetailsSuccess value)? sucess,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_CategoriesDetailsLoading value)? loadingState,
    TResult Function(_CategoriesDetailsError value)? errorState,
    TResult Function(_CategoriesDetailsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _CategoriesDetailsLoading implements CategoriesDetailsState {
  const factory _CategoriesDetailsLoading() = _$CategoriesDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$CategoriesDetailsErrorImplCopyWith<$Res> {
  factory _$$CategoriesDetailsErrorImplCopyWith(
          _$CategoriesDetailsErrorImpl value,
          $Res Function(_$CategoriesDetailsErrorImpl) then) =
      __$$CategoriesDetailsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CategoriesDetailsErrorImplCopyWithImpl<$Res>
    extends _$CategoriesDetailsStateCopyWithImpl<$Res,
        _$CategoriesDetailsErrorImpl>
    implements _$$CategoriesDetailsErrorImplCopyWith<$Res> {
  __$$CategoriesDetailsErrorImplCopyWithImpl(
      _$CategoriesDetailsErrorImpl _value,
      $Res Function(_$CategoriesDetailsErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CategoriesDetailsErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoriesDetailsErrorImpl implements _CategoriesDetailsError {
  const _$CategoriesDetailsErrorImpl({this.message = ''});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'CategoriesDetailsState.errorState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesDetailsErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesDetailsErrorImplCopyWith<_$CategoriesDetailsErrorImpl>
      get copyWith => __$$CategoriesDetailsErrorImplCopyWithImpl<
          _$CategoriesDetailsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<AttractionDto> attractions,
            List<SubcategoryDto> subs, OrderModal orderType)
        sucess,
  }) {
    return errorState(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<AttractionDto> attractions,
            List<SubcategoryDto> subs, OrderModal orderType)?
        sucess,
  }) {
    return errorState?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<AttractionDto> attractions, List<SubcategoryDto> subs,
            OrderModal orderType)?
        sucess,
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
    required TResult Function(_CategoriesDetailsLoading value) loadingState,
    required TResult Function(_CategoriesDetailsError value) errorState,
    required TResult Function(_CategoriesDetailsSuccess value) sucess,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_CategoriesDetailsLoading value)? loadingState,
    TResult? Function(_CategoriesDetailsError value)? errorState,
    TResult? Function(_CategoriesDetailsSuccess value)? sucess,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_CategoriesDetailsLoading value)? loadingState,
    TResult Function(_CategoriesDetailsError value)? errorState,
    TResult Function(_CategoriesDetailsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _CategoriesDetailsError implements CategoriesDetailsState {
  const factory _CategoriesDetailsError({final String message}) =
      _$CategoriesDetailsErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CategoriesDetailsErrorImplCopyWith<_$CategoriesDetailsErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesDetailsSuccessImplCopyWith<$Res> {
  factory _$$CategoriesDetailsSuccessImplCopyWith(
          _$CategoriesDetailsSuccessImpl value,
          $Res Function(_$CategoriesDetailsSuccessImpl) then) =
      __$$CategoriesDetailsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<AttractionDto> attractions,
      List<SubcategoryDto> subs,
      OrderModal orderType});
}

/// @nodoc
class __$$CategoriesDetailsSuccessImplCopyWithImpl<$Res>
    extends _$CategoriesDetailsStateCopyWithImpl<$Res,
        _$CategoriesDetailsSuccessImpl>
    implements _$$CategoriesDetailsSuccessImplCopyWith<$Res> {
  __$$CategoriesDetailsSuccessImplCopyWithImpl(
      _$CategoriesDetailsSuccessImpl _value,
      $Res Function(_$CategoriesDetailsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attractions = null,
    Object? subs = null,
    Object? orderType = null,
  }) {
    return _then(_$CategoriesDetailsSuccessImpl(
      attractions: null == attractions
          ? _value._attractions
          : attractions // ignore: cast_nullable_to_non_nullable
              as List<AttractionDto>,
      subs: null == subs
          ? _value._subs
          : subs // ignore: cast_nullable_to_non_nullable
              as List<SubcategoryDto>,
      orderType: null == orderType
          ? _value.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as OrderModal,
    ));
  }
}

/// @nodoc

class _$CategoriesDetailsSuccessImpl implements _CategoriesDetailsSuccess {
  const _$CategoriesDetailsSuccessImpl(
      {final List<AttractionDto> attractions = const [],
      final List<SubcategoryDto> subs = const [],
      this.orderType = OrderModal.name})
      : _attractions = attractions,
        _subs = subs;

  final List<AttractionDto> _attractions;
  @override
  @JsonKey()
  List<AttractionDto> get attractions {
    if (_attractions is EqualUnmodifiableListView) return _attractions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attractions);
  }

  final List<SubcategoryDto> _subs;
  @override
  @JsonKey()
  List<SubcategoryDto> get subs {
    if (_subs is EqualUnmodifiableListView) return _subs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subs);
  }

  @override
  @JsonKey()
  final OrderModal orderType;

  @override
  String toString() {
    return 'CategoriesDetailsState.sucess(attractions: $attractions, subs: $subs, orderType: $orderType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesDetailsSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._attractions, _attractions) &&
            const DeepCollectionEquality().equals(other._subs, _subs) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_attractions),
      const DeepCollectionEquality().hash(_subs),
      orderType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesDetailsSuccessImplCopyWith<_$CategoriesDetailsSuccessImpl>
      get copyWith => __$$CategoriesDetailsSuccessImplCopyWithImpl<
          _$CategoriesDetailsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(List<AttractionDto> attractions,
            List<SubcategoryDto> subs, OrderModal orderType)
        sucess,
  }) {
    return sucess(attractions, subs, orderType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(List<AttractionDto> attractions,
            List<SubcategoryDto> subs, OrderModal orderType)?
        sucess,
  }) {
    return sucess?.call(attractions, subs, orderType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(List<AttractionDto> attractions, List<SubcategoryDto> subs,
            OrderModal orderType)?
        sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(attractions, subs, orderType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_CategoriesDetailsLoading value) loadingState,
    required TResult Function(_CategoriesDetailsError value) errorState,
    required TResult Function(_CategoriesDetailsSuccess value) sucess,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_CategoriesDetailsLoading value)? loadingState,
    TResult? Function(_CategoriesDetailsError value)? errorState,
    TResult? Function(_CategoriesDetailsSuccess value)? sucess,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_CategoriesDetailsLoading value)? loadingState,
    TResult Function(_CategoriesDetailsError value)? errorState,
    TResult Function(_CategoriesDetailsSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _CategoriesDetailsSuccess implements CategoriesDetailsState {
  const factory _CategoriesDetailsSuccess(
      {final List<AttractionDto> attractions,
      final List<SubcategoryDto> subs,
      final OrderModal orderType}) = _$CategoriesDetailsSuccessImpl;

  List<AttractionDto> get attractions;
  List<SubcategoryDto> get subs;
  OrderModal get orderType;
  @JsonKey(ignore: true)
  _$$CategoriesDetailsSuccessImplCopyWith<_$CategoriesDetailsSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
