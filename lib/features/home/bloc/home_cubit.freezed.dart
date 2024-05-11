// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(
            AttractionDto? attractionDto,
            List<StoryDto> stories,
            List<SubcategoryDto> subsList,
            List<AttractionDto> attractionsList,
            List<AttractionDto> favoriteAttractions,
            List<RouteDto> routes)
        sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(
            AttractionDto? attractionDto,
            List<StoryDto> stories,
            List<SubcategoryDto> subsList,
            List<AttractionDto> attractionsList,
            List<AttractionDto> favoriteAttractions,
            List<RouteDto> routes)?
        sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(
            AttractionDto? attractionDto,
            List<StoryDto> stories,
            List<SubcategoryDto> subsList,
            List<AttractionDto> attractionsList,
            List<AttractionDto> favoriteAttractions,
            List<RouteDto> routes)?
        sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_HomeLoading value) loadingState,
    required TResult Function(_HomeError value) errorState,
    required TResult Function(_HomeSuccess value) sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_HomeLoading value)? loadingState,
    TResult? Function(_HomeError value)? errorState,
    TResult? Function(_HomeSuccess value)? sucess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_HomeLoading value)? loadingState,
    TResult Function(_HomeError value)? errorState,
    TResult Function(_HomeSuccess value)? sucess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
    extends _$HomeStateCopyWithImpl<$Res, _$InitialPageImpl>
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
    return 'HomeState.initialState()';
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
    required TResult Function(
            AttractionDto? attractionDto,
            List<StoryDto> stories,
            List<SubcategoryDto> subsList,
            List<AttractionDto> attractionsList,
            List<AttractionDto> favoriteAttractions,
            List<RouteDto> routes)
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
    TResult? Function(
            AttractionDto? attractionDto,
            List<StoryDto> stories,
            List<SubcategoryDto> subsList,
            List<AttractionDto> attractionsList,
            List<AttractionDto> favoriteAttractions,
            List<RouteDto> routes)?
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
    TResult Function(
            AttractionDto? attractionDto,
            List<StoryDto> stories,
            List<SubcategoryDto> subsList,
            List<AttractionDto> attractionsList,
            List<AttractionDto> favoriteAttractions,
            List<RouteDto> routes)?
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
    required TResult Function(_HomeLoading value) loadingState,
    required TResult Function(_HomeError value) errorState,
    required TResult Function(_HomeSuccess value) sucess,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_HomeLoading value)? loadingState,
    TResult? Function(_HomeError value)? errorState,
    TResult? Function(_HomeSuccess value)? sucess,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_HomeLoading value)? loadingState,
    TResult Function(_HomeError value)? errorState,
    TResult Function(_HomeSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialPage implements HomeState {
  const factory _InitialPage() = _$InitialPageImpl;
}

/// @nodoc
abstract class _$$HomeLoadingImplCopyWith<$Res> {
  factory _$$HomeLoadingImplCopyWith(
          _$HomeLoadingImpl value, $Res Function(_$HomeLoadingImpl) then) =
      __$$HomeLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadingImpl>
    implements _$$HomeLoadingImplCopyWith<$Res> {
  __$$HomeLoadingImplCopyWithImpl(
      _$HomeLoadingImpl _value, $Res Function(_$HomeLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeLoadingImpl implements _HomeLoading {
  const _$HomeLoadingImpl();

  @override
  String toString() {
    return 'HomeState.loadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(
            AttractionDto? attractionDto,
            List<StoryDto> stories,
            List<SubcategoryDto> subsList,
            List<AttractionDto> attractionsList,
            List<AttractionDto> favoriteAttractions,
            List<RouteDto> routes)
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
    TResult? Function(
            AttractionDto? attractionDto,
            List<StoryDto> stories,
            List<SubcategoryDto> subsList,
            List<AttractionDto> attractionsList,
            List<AttractionDto> favoriteAttractions,
            List<RouteDto> routes)?
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
    TResult Function(
            AttractionDto? attractionDto,
            List<StoryDto> stories,
            List<SubcategoryDto> subsList,
            List<AttractionDto> attractionsList,
            List<AttractionDto> favoriteAttractions,
            List<RouteDto> routes)?
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
    required TResult Function(_HomeLoading value) loadingState,
    required TResult Function(_HomeError value) errorState,
    required TResult Function(_HomeSuccess value) sucess,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_HomeLoading value)? loadingState,
    TResult? Function(_HomeError value)? errorState,
    TResult? Function(_HomeSuccess value)? sucess,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_HomeLoading value)? loadingState,
    TResult Function(_HomeError value)? errorState,
    TResult Function(_HomeSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _HomeLoading implements HomeState {
  const factory _HomeLoading() = _$HomeLoadingImpl;
}

/// @nodoc
abstract class _$$HomeErrorImplCopyWith<$Res> {
  factory _$$HomeErrorImplCopyWith(
          _$HomeErrorImpl value, $Res Function(_$HomeErrorImpl) then) =
      __$$HomeErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$HomeErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeErrorImpl>
    implements _$$HomeErrorImplCopyWith<$Res> {
  __$$HomeErrorImplCopyWithImpl(
      _$HomeErrorImpl _value, $Res Function(_$HomeErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$HomeErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeErrorImpl implements _HomeError {
  const _$HomeErrorImpl({this.message = ''});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'HomeState.errorState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeErrorImplCopyWith<_$HomeErrorImpl> get copyWith =>
      __$$HomeErrorImplCopyWithImpl<_$HomeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(
            AttractionDto? attractionDto,
            List<StoryDto> stories,
            List<SubcategoryDto> subsList,
            List<AttractionDto> attractionsList,
            List<AttractionDto> favoriteAttractions,
            List<RouteDto> routes)
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
    TResult? Function(
            AttractionDto? attractionDto,
            List<StoryDto> stories,
            List<SubcategoryDto> subsList,
            List<AttractionDto> attractionsList,
            List<AttractionDto> favoriteAttractions,
            List<RouteDto> routes)?
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
    TResult Function(
            AttractionDto? attractionDto,
            List<StoryDto> stories,
            List<SubcategoryDto> subsList,
            List<AttractionDto> attractionsList,
            List<AttractionDto> favoriteAttractions,
            List<RouteDto> routes)?
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
    required TResult Function(_HomeLoading value) loadingState,
    required TResult Function(_HomeError value) errorState,
    required TResult Function(_HomeSuccess value) sucess,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_HomeLoading value)? loadingState,
    TResult? Function(_HomeError value)? errorState,
    TResult? Function(_HomeSuccess value)? sucess,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_HomeLoading value)? loadingState,
    TResult Function(_HomeError value)? errorState,
    TResult Function(_HomeSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _HomeError implements HomeState {
  const factory _HomeError({final String message}) = _$HomeErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$HomeErrorImplCopyWith<_$HomeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeSuccessImplCopyWith<$Res> {
  factory _$$HomeSuccessImplCopyWith(
          _$HomeSuccessImpl value, $Res Function(_$HomeSuccessImpl) then) =
      __$$HomeSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AttractionDto? attractionDto,
      List<StoryDto> stories,
      List<SubcategoryDto> subsList,
      List<AttractionDto> attractionsList,
      List<AttractionDto> favoriteAttractions,
      List<RouteDto> routes});

  $AttractionDtoCopyWith<$Res>? get attractionDto;
}

/// @nodoc
class __$$HomeSuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeSuccessImpl>
    implements _$$HomeSuccessImplCopyWith<$Res> {
  __$$HomeSuccessImplCopyWithImpl(
      _$HomeSuccessImpl _value, $Res Function(_$HomeSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attractionDto = freezed,
    Object? stories = null,
    Object? subsList = null,
    Object? attractionsList = null,
    Object? favoriteAttractions = null,
    Object? routes = null,
  }) {
    return _then(_$HomeSuccessImpl(
      attractionDto: freezed == attractionDto
          ? _value.attractionDto
          : attractionDto // ignore: cast_nullable_to_non_nullable
              as AttractionDto?,
      stories: null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<StoryDto>,
      subsList: null == subsList
          ? _value._subsList
          : subsList // ignore: cast_nullable_to_non_nullable
              as List<SubcategoryDto>,
      attractionsList: null == attractionsList
          ? _value._attractionsList
          : attractionsList // ignore: cast_nullable_to_non_nullable
              as List<AttractionDto>,
      favoriteAttractions: null == favoriteAttractions
          ? _value._favoriteAttractions
          : favoriteAttractions // ignore: cast_nullable_to_non_nullable
              as List<AttractionDto>,
      routes: null == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<RouteDto>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AttractionDtoCopyWith<$Res>? get attractionDto {
    if (_value.attractionDto == null) {
      return null;
    }

    return $AttractionDtoCopyWith<$Res>(_value.attractionDto!, (value) {
      return _then(_value.copyWith(attractionDto: value));
    });
  }
}

/// @nodoc

class _$HomeSuccessImpl implements _HomeSuccess {
  const _$HomeSuccessImpl(
      {this.attractionDto,
      final List<StoryDto> stories = const [],
      final List<SubcategoryDto> subsList = const [],
      final List<AttractionDto> attractionsList = const [],
      final List<AttractionDto> favoriteAttractions = const [],
      final List<RouteDto> routes = const []})
      : _stories = stories,
        _subsList = subsList,
        _attractionsList = attractionsList,
        _favoriteAttractions = favoriteAttractions,
        _routes = routes;

  @override
  final AttractionDto? attractionDto;
  final List<StoryDto> _stories;
  @override
  @JsonKey()
  List<StoryDto> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  final List<SubcategoryDto> _subsList;
  @override
  @JsonKey()
  List<SubcategoryDto> get subsList {
    if (_subsList is EqualUnmodifiableListView) return _subsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subsList);
  }

  final List<AttractionDto> _attractionsList;
  @override
  @JsonKey()
  List<AttractionDto> get attractionsList {
    if (_attractionsList is EqualUnmodifiableListView) return _attractionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attractionsList);
  }

  final List<AttractionDto> _favoriteAttractions;
  @override
  @JsonKey()
  List<AttractionDto> get favoriteAttractions {
    if (_favoriteAttractions is EqualUnmodifiableListView)
      return _favoriteAttractions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favoriteAttractions);
  }

  final List<RouteDto> _routes;
  @override
  @JsonKey()
  List<RouteDto> get routes {
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_routes);
  }

  @override
  String toString() {
    return 'HomeState.sucess(attractionDto: $attractionDto, stories: $stories, subsList: $subsList, attractionsList: $attractionsList, favoriteAttractions: $favoriteAttractions, routes: $routes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSuccessImpl &&
            (identical(other.attractionDto, attractionDto) ||
                other.attractionDto == attractionDto) &&
            const DeepCollectionEquality().equals(other._stories, _stories) &&
            const DeepCollectionEquality().equals(other._subsList, _subsList) &&
            const DeepCollectionEquality()
                .equals(other._attractionsList, _attractionsList) &&
            const DeepCollectionEquality()
                .equals(other._favoriteAttractions, _favoriteAttractions) &&
            const DeepCollectionEquality().equals(other._routes, _routes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      attractionDto,
      const DeepCollectionEquality().hash(_stories),
      const DeepCollectionEquality().hash(_subsList),
      const DeepCollectionEquality().hash(_attractionsList),
      const DeepCollectionEquality().hash(_favoriteAttractions),
      const DeepCollectionEquality().hash(_routes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSuccessImplCopyWith<_$HomeSuccessImpl> get copyWith =>
      __$$HomeSuccessImplCopyWithImpl<_$HomeSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(String message) errorState,
    required TResult Function(
            AttractionDto? attractionDto,
            List<StoryDto> stories,
            List<SubcategoryDto> subsList,
            List<AttractionDto> attractionsList,
            List<AttractionDto> favoriteAttractions,
            List<RouteDto> routes)
        sucess,
  }) {
    return sucess(attractionDto, stories, subsList, attractionsList,
        favoriteAttractions, routes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(String message)? errorState,
    TResult? Function(
            AttractionDto? attractionDto,
            List<StoryDto> stories,
            List<SubcategoryDto> subsList,
            List<AttractionDto> attractionsList,
            List<AttractionDto> favoriteAttractions,
            List<RouteDto> routes)?
        sucess,
  }) {
    return sucess?.call(attractionDto, stories, subsList, attractionsList,
        favoriteAttractions, routes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(String message)? errorState,
    TResult Function(
            AttractionDto? attractionDto,
            List<StoryDto> stories,
            List<SubcategoryDto> subsList,
            List<AttractionDto> attractionsList,
            List<AttractionDto> favoriteAttractions,
            List<RouteDto> routes)?
        sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(attractionDto, stories, subsList, attractionsList,
          favoriteAttractions, routes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialPage value) initialState,
    required TResult Function(_HomeLoading value) loadingState,
    required TResult Function(_HomeError value) errorState,
    required TResult Function(_HomeSuccess value) sucess,
  }) {
    return sucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialPage value)? initialState,
    TResult? Function(_HomeLoading value)? loadingState,
    TResult? Function(_HomeError value)? errorState,
    TResult? Function(_HomeSuccess value)? sucess,
  }) {
    return sucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialPage value)? initialState,
    TResult Function(_HomeLoading value)? loadingState,
    TResult Function(_HomeError value)? errorState,
    TResult Function(_HomeSuccess value)? sucess,
    required TResult orElse(),
  }) {
    if (sucess != null) {
      return sucess(this);
    }
    return orElse();
  }
}

abstract class _HomeSuccess implements HomeState {
  const factory _HomeSuccess(
      {final AttractionDto? attractionDto,
      final List<StoryDto> stories,
      final List<SubcategoryDto> subsList,
      final List<AttractionDto> attractionsList,
      final List<AttractionDto> favoriteAttractions,
      final List<RouteDto> routes}) = _$HomeSuccessImpl;

  AttractionDto? get attractionDto;
  List<StoryDto> get stories;
  List<SubcategoryDto> get subsList;
  List<AttractionDto> get attractionsList;
  List<AttractionDto> get favoriteAttractions;
  List<RouteDto> get routes;
  @JsonKey(ignore: true)
  _$$HomeSuccessImplCopyWith<_$HomeSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
