import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/features/categories/domain/categories_repository.dart';
import 'package:almaguide_flutter/features/home/domain/home_repository.dart';
import 'package:almaguide_flutter/features/home/domain/models/attraction_dto.dart';
import 'package:almaguide_flutter/features/home/domain/models/subcategory_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'categories_details_cubit.freezed.dart';

@singleton
class CategoriesDetailsCubit extends Cubit<CategoriesDetailsState> {
  final CategoriesRepository repo;
  final HomeRepository homeRepo;

  CategoriesDetailsCubit(this.repo, this.homeRepo)
      : super(const CategoriesDetailsState.initialState());
  List<AttractionDto> _attracts = [];
  List<SubcategoryDto> _subs = [];

  Future<void> initCategories(
      {int? category, int? subCat, int? avgRate, String? ordering}) async {
    print('salam');
    emit(const _CategoriesDetailsLoading());
    final attrResult = await homeRepo.getAttractsByCategories(
        categoryId: category,
        subcategory: subCat,
        avgRate: avgRate,
        ordering: ordering);

    attrResult.fold((l) {
      emit(_CategoriesDetailsError(message: mapFailureToMessage(l)));
    }, (r) {
      _attracts = r;
    });

    emit(_CategoriesDetailsSuccess(
      attractions: _attracts,
      subs: _subs,
    ));
  }

  Future<void> initSubCategories({required int category}) async {
    emit(const _CategoriesDetailsLoading());
    final attrResult = await homeRepo.getSubsByCategory(
      categoryId: category,
    );

    attrResult.fold((l) {
      emit(_CategoriesDetailsError(message: mapFailureToMessage(l)));
    }, (r) {
      _subs = r;
    });
    emit(_CategoriesDetailsSuccess(
      attractions: _attracts,
      subs: _subs,
    ));
  }

  Future<void> init({required int categoryId}) async {
    await initCategories(category: categoryId);
    await initSubCategories(category: categoryId);
  }

//   Future<void> getOtherCategories() async {
//     emit(const _CategoriesLoading());
//     final attrResult = await repo.getOtherCategories();

//     attrResult.fold((l) {
//       emit(_CategoriesError(message: mapFailureToMessage(l)));
//     }, (r) {
//       otherCategories = r;
//     });
//   }
// }
}

@freezed
class CategoriesDetailsState with _$CategoriesDetailsState {
  const factory CategoriesDetailsState.initialState() = _InitialPage;
  const factory CategoriesDetailsState.loadingState() =
      _CategoriesDetailsLoading;
  const factory CategoriesDetailsState.errorState(
      {@Default('') String message}) = _CategoriesDetailsError;
  const factory CategoriesDetailsState.sucess({
    @Default([]) List<AttractionDto> attractions,
    @Default([]) List<SubcategoryDto> subs,
  }) = _CategoriesDetailsSuccess;
}
