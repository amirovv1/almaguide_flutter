import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/core/services/location_service.dart';
import 'package:almaguide_flutter/features/home/domain/home_repository.dart';
import 'package:almaguide_flutter/features/home/domain/models/attraction_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/review_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'attraction_details_cubit.freezed.dart';

@singleton
class AttractionDetailsCubit extends Cubit<AttractionDetailsState> {
  final HomeRepository repo;

  AttractionDetailsCubit(this.repo)
      : super(const AttractionDetailsState.initialState());
  late AttractionDto _attractionDto;
  late List<ReviewDto> reviews;

  Future<void> initAttractDetails({required int attractId}) async {
    emit(const _AttrLoading());
    final location = await LocationService().getCurrentLocation();
    final attrResult = await repo.getAttractionByID(
        lat: location.latitude.toString(),
        lng: location.longitude.toString(),
        id: attractId);
    final reviewRes = await repo.getAttractReviews(id: attractId);

    attrResult.fold((l) {
      emit(_AttrError(message: mapFailureToMessage(l)));
    }, (r) {
      _attractionDto = r;
    });
    reviewRes.fold((l) {
      emit(_AttrError(message: mapFailureToMessage(l)));
    }, (r) {
      reviews = r;
    });

    emit(_AttrSuccess(attractionDto: _attractionDto, reviews: reviews));
  }

  Future<String?> attractRoute() async {
    final location = await LocationService().getCurrentLocation();
    final result = await repo.getAttractionRoutUrl(
        lng: location.longitude.toString(),
        lat: location.latitude.toString(),
        id: _attractionDto.id);

    final route = result.fold((l) {
      return null;
    }, (r) {
      return r;
    });
    return route;
  }
}

@freezed
class AttractionDetailsState with _$AttractionDetailsState {
  const factory AttractionDetailsState.initialState() = _InitialPage;
  const factory AttractionDetailsState.loadingState() = _AttrLoading;
  const factory AttractionDetailsState.errorState(
      {@Default('') String message}) = _AttrError;
  const factory AttractionDetailsState.sucess(
      {final AttractionDto? attractionDto,
      @Default([]) List<ReviewDto> reviews}) = _AttrSuccess;
}
