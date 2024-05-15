import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/features/categories/domain/categories_repository.dart';
import 'package:almaguide_flutter/features/favorites/domain/models/tour_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'my_tour_cubit.freezed.dart';

@singleton
class MyTourCubit extends Cubit<MyTourState> {
  final CategoriesRepository repo;

  MyTourCubit(this.repo) : super(const MyTourState.initialState());
  List<TourDto> _tours = [];

  Future<void> initCategories() async {
    emit(const _MyTourListLoading());
    final attrResult = await repo.getMyTours();

    attrResult.fold((l) {
      emit(_MyTourError(message: mapFailureToMessage(l)));
    }, (r) {
      _tours = r;
    });

     emit(_MyTourSuccess(tours: _tours));
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
class MyTourState with _$MyTourState {
  const factory MyTourState.initialState() = _InitialPage;
  const factory MyTourState.loadingState() = _MyTourListLoading;
  const factory MyTourState.errorState({@Default('') String message}) =
      _MyTourError;
  const factory MyTourState.sucess(
      {@Default([]) List<TourDto> tours,
      }) = _MyTourSuccess;
}
