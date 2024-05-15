import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/features/categories/domain/categories_repository.dart';
import 'package:almaguide_flutter/features/favorites/domain/models/tour_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'tour_list_cubit.freezed.dart';

@singleton
class TourListCubit extends Cubit<TourListState> {
  final CategoriesRepository repo;

  TourListCubit(this.repo) : super(const TourListState.initialState());
  List<TourDto> _tours = [];

  Future<void> initCategories() async {
    emit(const _TourListLoading());
    final attrResult = await repo.getTours();

    attrResult.fold((l) {
      emit(_TourListError(message: mapFailureToMessage(l)));
    }, (r) {
      _tours = r;
    });

     emit(_TourListSuccess(tours: _tours));
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
class TourListState with _$TourListState {
  const factory TourListState.initialState() = _InitialPage;
  const factory TourListState.loadingState() = _TourListLoading;
  const factory TourListState.errorState({@Default('') String message}) =
      _TourListError;
  const factory TourListState.sucess(
      {@Default([]) List<TourDto> tours,
      }) = _TourListSuccess;
}
