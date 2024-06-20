import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/features/categories/domain/categories_repository.dart';
import 'package:almaguide_flutter/features/home/domain/home_repository.dart';
import 'package:almaguide_flutter/features/home/domain/models/review_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'review_cubit.freezed.dart';

@singleton
class ReviewsCubit extends Cubit<ReviewsState> {
  final CategoriesRepository repo;
  final HomeRepository homeRepo;

  ReviewsCubit(this.repo, this.homeRepo)
      : super(const ReviewsState.initialState());
  List<ReviewDto> _reviews = [];

  Future<void> initCategories(bool isAttract, int itemId) async {
    emit(const _ReviewsLoading());
    final attrResult = isAttract
        ? await homeRepo.getAttractReviews(id: itemId)
        : await repo.getReviewTour(id: itemId);

    attrResult.fold((l) {
      emit(_ReviewsError(message: mapFailureToMessage(l)));
    }, (r) {
      _reviews = r;
    });

    emit(_ReviewsSuccess(tours: _reviews));
  }

  Future<void> sendReview(
      {required int tourId,
      required String review,
      required int rate,
      required bool isAttract}) async {
    emit(const _ReviewsLoading());
    final attrResult = await repo.sendReview(
        tourId: tourId, review: review, rate: rate, isAttract: isAttract);
    await Future.delayed(Duration(seconds: 3));

    attrResult.fold((l) {
      emit(_ReviewsError(message: mapFailureToMessage(l)));
    }, (r) async {
      await initCategories(isAttract, tourId);
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
class ReviewsState with _$ReviewsState {
  const factory ReviewsState.initialState() = _InitialPage;
  const factory ReviewsState.loadingState() = _ReviewsLoading;
  const factory ReviewsState.errorState({@Default('') String message}) =
      _ReviewsError;
  const factory ReviewsState.sucess({
    @Default([]) List<ReviewDto> tours,
  }) = _ReviewsSuccess;
}
