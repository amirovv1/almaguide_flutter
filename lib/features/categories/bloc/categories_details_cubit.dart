import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/features/categories/domain/categories_repository.dart';
import 'package:almaguide_flutter/features/categories/presentation/widgets/category_details_widgets/order_modal.dart';
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
  OrderModal orderType = OrderModal.avgRate;

  Future<void> initCategories(
      {int? category, int? subCat, int? avgRate, String? ordering}) async {
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

  void sortAttractions(OrderModal order) {
    emit(const _CategoriesDetailsLoading());

    _attracts.sort((a, b) {
      switch (order) {
        case OrderModal.name:
          return a.name.compareTo(b.name);
        case OrderModal.avgRate:
          double? aRate = a.avgRateAsDouble;
          double? bRate = b.avgRateAsDouble;
          if (aRate == null && bRate == null) return 0;
          if (aRate == null) return 1;
          if (bRate == null) return -1;
          return bRate.compareTo(aRate); // assuming higher rates are better
        case OrderModal.distance:
          double? aDist = a.distanceAsDouble;
          double? bDist = b.distanceAsDouble;
          if (aDist == null && bDist == null) return 0;
          if (aDist == null) return 1;
          if (bDist == null) return -1;
          return aDist.compareTo(bDist);
      }
    });
    orderType = order;

    emit(_CategoriesDetailsSuccess(
        attractions: _attracts, subs: _subs, orderType: orderType));
  }

  void filterAttractionsByRating(int ratingFilter) {
    emit(const _CategoriesDetailsLoading());

    double minRating = ratingFilter.toDouble();
    double maxRating = (ratingFilter + 0.99).toDouble();

    final atrcts = _attracts.where((attraction) {
      if (attraction.avgRateAsDouble != null) {
        return attraction.avgRateAsDouble! >= minRating &&
            attraction.avgRateAsDouble! <= maxRating;
      }
      return false;
    }).toList();
    emit(_CategoriesDetailsSuccess(
        attractions: atrcts, subs: _subs, orderType: orderType));
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
    @Default(OrderModal.name) OrderModal orderType,
  }) = _CategoriesDetailsSuccess;
}
