import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/core/services/location_service.dart';
import 'package:almaguide_flutter/features/home/domain/home_repository.dart';
import 'package:almaguide_flutter/features/home/domain/models/attraction_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/subcategory_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_cubit.freezed.dart';

@singleton
class HomeCubit extends Cubit<HomeState> {
  final HomeRepository repo;

  HomeCubit(this.repo) : super(const HomeState.initialState());
  late AttractionDto _attractionDto;
  late List<SubcategoryDto> _subsList;

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

    emit(_HomeSuccess(attractionDto: _attractionDto, subsList: _subsList));
  }
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initialState() = _InitialPage;
  const factory HomeState.loadingState() = _HomeLoading;
  const factory HomeState.errorState({@Default('') String message}) =
      _HomeError;
  const factory HomeState.sucess({final AttractionDto? attractionDto, @Default([]) List<SubcategoryDto> subsList}) =
      _HomeSuccess;
}
