import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/features/categories/domain/categories_repository.dart';
import 'package:almaguide_flutter/features/favorites/domain/models/tour_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tour_detail_cubit.freezed.dart';

@singleton
class TourDetailsCubit extends Cubit<TourDetailsState> {
  final CategoriesRepository repo;

  TourDetailsCubit(this.repo) : super(const TourDetailsState.initialState());

  Future<void> initTour({required int id}) async {
    emit(const _TourDetailsLoading());
    final attrResult = await repo.getTourById(id: id);

    attrResult.fold((l) {
      emit(_TourDetailsError(message: mapFailureToMessage(l)));
    }, (r) {
      emit(_TourDetailsSuccess(r));
    });
  }

  // Future<void> getOtherCategories() async {
  //   emit(const _CategoriesLoading());
  //   final attrResult = await repo.getOtherCategories();

  //   attrResult.fold((l) {
  //     emit(_CategoriesError(message: mapFailureToMessage(l)));
  //   }, (r) {
  //     otherCategories = r;
  //   });
  // }
}

@freezed
class TourDetailsState with _$TourDetailsState {
  const factory TourDetailsState.initialState() = _InitialPage;
  const factory TourDetailsState.loadingState() = _TourDetailsLoading;
  const factory TourDetailsState.errorState({@Default('') String message}) =
      _TourDetailsError;
  const factory TourDetailsState.sucess(final TourDto tour) =
      _TourDetailsSuccess;
}
