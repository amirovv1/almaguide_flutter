import 'package:almaguide_flutter/features/categories/domain/categories_repository.dart';
import 'package:almaguide_flutter/features/favorites/domain/models/tour_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/review_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tour_reviews_bloc.freezed.dart';

@singleton
class TourReviewsCubit extends Cubit<TourReviewsState> {
  final CategoriesRepository repo;

  TourReviewsCubit(this.repo) : super(const TourReviewsState.initialState());
  List<TourDto> _tours = [];

  // Future<void> initCategories() async {
  //   emit(const _TourListLoading());
  //   final attrResult = await repo.getTours();

  //   attrResult.fold((l) {
  //     emit(_TourListError(message: mapFailureToMessage(l)));
  //   }, (r) {
  //     _tours = r;
  //   });

  //    emit(_TourListSuccess(reviews: _tours));
  // }

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
class TourReviewsState with _$TourReviewsState {
  const factory TourReviewsState.initialState() = _InitialPage;
  const factory TourReviewsState.loadingState() = _TourReviewsLoading;
  const factory TourReviewsState.errorState({@Default('') String message}) =
      _TourReviewsError;
  const factory TourReviewsState.sucess(
      {@Default([]) List<ReviewDto> reviews,
      }) = _TourReviewsSuccess;
}
