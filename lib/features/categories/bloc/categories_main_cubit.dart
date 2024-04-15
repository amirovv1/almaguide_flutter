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
  late List<CategoryDto> _popCategories;

  Future<void> initCategories() async {
    emit(const _CategoriesLoading());
    final attrResult = await repo.getPopularCategories(
       );
    
    attrResult.fold((l) {
      emit(_CategoriesError(message: mapFailureToMessage(l)));
    }, (r) {
      _popCategories = r;
    });
    

    emit(_CategoriesSuccess(popCategories:_popCategories ));
  }
}

@freezed
class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initialState() = _InitialPage;
  const factory CategoriesState.loadingState() = _CategoriesLoading;
  const factory CategoriesState.errorState({@Default('') String message}) =
      _CategoriesError;
  const factory CategoriesState.sucess({ @Default([]) List<CategoryDto> popCategories}) =
      _CategoriesSuccess;
}
