import 'dart:async';

import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/core/services/location_service.dart';
import 'package:almaguide_flutter/features/home/domain/home_repository.dart';
import 'package:almaguide_flutter/features/home/domain/models/attraction_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/route_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/story_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/subcategory_dto.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_cubit.freezed.dart';

@singleton
class HomeCubit extends Cubit<HomeState> {
  final HomeRepository repo;

  HomeCubit(this.repo) : super(const HomeState.initialState()) {
    initHome();
    getStories();
  }
  late AttractionDto _attractionDto;
  List<SubcategoryDto> _subsList = [];
  List<StoryDto> _storiesList = [];
  List<AttractionDto> _favoritesList = [];
  List<RouteDto> _routeList = [];

  Future<void> initHome() async {
    emit(const _HomeLoading());
    final location = await LocationService().getCurrentLocation();
    final attrResult = await repo.getMainAttraction(
        lat: location.latitude.toString(), lng: location.longitude.toString());
    final subsResult = await repo.getSubcategories(
        lat: location.latitude.toString(), lng: location.longitude.toString());
    attrResult.fold((l) {
      emit(_HomeError(message: mapFailureToMessage(l)));
    }, (r) {
      _attractionDto = r;
    });
    subsResult.fold((l) {
      emit(_HomeError(message: mapFailureToMessage(l)));
    }, (r) {
      _subsList = r;
    });
    emit(_HomeSuccess(
        favoriteAttractions: _favoritesList,
        stories: _storiesList,
        attractionDto: _attractionDto,
        subsList: _subsList,
        routes: _routeList));
  }

  Future<void> search(String name) async {
    emit(const _HomeLoading());
    final location = await LocationService().getCurrentLocation();
    Timer(const Duration(milliseconds: 250), () async {
      final result = await repo.searchAttraction(
          keyword: name,
          lat: location.latitude?.toInt() ?? 42,
          lng: location.longitude?.toInt() ?? 72);
      result.fold((l) {
        emit(_HomeError(message: mapFailureToMessage(l)));
      }, (r) {
        emit(_HomeSuccess(
            attractionsList: r,
            favoriteAttractions: _favoritesList,
            stories: _storiesList,
            attractionDto: _attractionDto,
            subsList: _subsList,
            routes: _routeList));
        initHome();
      });
    });
  }

  Future<void> addAttractionToFavorite(
      int attraction, BuildContext context) async {
    //emit(const _HomeLoading());
    final result = await repo.addAttractionToFavorites(attraction: attraction);
    result.fold((l) {
      emit(_HomeError(message: mapFailureToMessage(l)));
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(mapFailureToMessage(l))));
    }, (r) {
      getFavorites();
    });
  }

  Future<void> deleteFromFavorite(
      int attractionId, BuildContext context) async {
    //emit(const _HomeLoading());
    final result = await repo.deleteFromFavorites(attractionId);
    result.fold((l) {
      emit(_HomeError(message: mapFailureToMessage(l)));
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(mapFailureToMessage(l))));
    }, (r) {
      getFavorites();
    });
  }

  Future<void> getFavorites() async {
    final location = await LocationService().getCurrentLocation();
    final result = await repo.getFavorites(
        lat: location.latitude.toString(), lng: location.longitude.toString());
    result.fold((l) {}, (r) {
      _favoritesList = r;
    });
    emit(_HomeSuccess(
        favoriteAttractions: _favoritesList,
        stories: _storiesList,
        attractionDto: _attractionDto,
        subsList: _subsList,
        routes: _routeList));
  }

  Future<void> getRoutes() async {
    final result = await repo.getRoutes();
    result.fold((l) {}, (r) {
      _routeList = r;
    });
    emit(_HomeSuccess(
        favoriteAttractions: _favoritesList,
        stories: _storiesList,
        attractionDto: _attractionDto,
        subsList: _subsList,
        routes: _routeList));
  }

  Future<void> makeRoute() async {
    emit(const HomeState.loadingState());
    final result = await repo.makeRoute();
    result.fold((l) {}, (r) {
      getRoutes();
            getFavorites();

    });
  }

  Future<void> getStories() async {
    final result = await repo.getStories();
    result.fold((l) {}, (r) {
      _storiesList = r;
    });
    emit(_HomeSuccess(
        favoriteAttractions: _favoritesList,
        stories: _storiesList,
        attractionDto: _attractionDto,
        subsList: _subsList));
  }
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initialState() = _InitialPage;
  const factory HomeState.loadingState() = _HomeLoading;
  const factory HomeState.errorState({@Default('') String message}) =
      _HomeError;
  const factory HomeState.sucess({
    final AttractionDto? attractionDto,
    @Default([]) List<StoryDto> stories,
    @Default([]) List<SubcategoryDto> subsList,
    @Default([]) List<AttractionDto> attractionsList,
    @Default([]) List<AttractionDto> favoriteAttractions,
    @Default([]) List<RouteDto> routes,
  }) = _HomeSuccess;
}
