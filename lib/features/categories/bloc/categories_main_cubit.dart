import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/features/categories/domain/categories_repository.dart';
import 'package:almaguide_flutter/features/home/domain/models/category_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'categories_main_cubit.freezed.dart';

@singleton
class CategoriesCubit extends Cubit<CategoriesState> {
  final CategoriesRepository repo;

  CategoriesCubit(this.repo) : super(const CategoriesState.initialState());
  List<CategoryDto> _popCategories = [];
  List<CategoryDto> otherCategories = [];

  Future<void> initCategories() async {
    emit(const _CategoriesLoading());
    final attrResult = await repo.getPopularCategories();

    attrResult.fold((l) {
      emit(_CategoriesError(message: mapFailureToMessage(l)));
    }, (r) {
      _popCategories = r;
    });
    await  getOtherCategories();

    emit(_CategoriesSuccess(popCategories: _popCategories, otherCategories: otherCategories));
  }

  Future<void> getOtherCategories() async {
    emit(const _CategoriesLoading());
    final attrResult = await repo.getOtherCategories();

    attrResult.fold((l) {
      emit(_CategoriesError(message: mapFailureToMessage(l)));
    }, (r) {
      otherCategories = r;
    });
  }
}

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initialState() = _InitialPage;
  const factory CategoriesState.loadingState() = _CategoriesLoading;
  const factory CategoriesState.errorState({@Default('') String message}) =
      _CategoriesError;
  const factory CategoriesState.sucess(
      {@Default([]) List<CategoryDto> popCategories,
      @Default([]) List<CategoryDto> otherCategories}) = _CategoriesSuccess;
}
