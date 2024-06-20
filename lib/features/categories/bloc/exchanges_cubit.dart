import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/features/categories/domain/categories_repository.dart';
import 'package:almaguide_flutter/features/categories/domain/models/exchange_dto.dart';
import 'package:almaguide_flutter/features/home/domain/home_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'exchanges_cubit.freezed.dart';

@singleton
class ExchangesCubit extends Cubit<ExchangesState> {
  final CategoriesRepository repo;
  final HomeRepository homeRepo;

  ExchangesCubit(this.repo, this.homeRepo)
      : super(const ExchangesState.initialState());

  Future<void> initExchanges(
      {int? category, int? subCat, int? avgRate, String? ordering}) async {
    emit(const _ExchangesLoading());
    final attrResult = await repo.getExchanges();

    attrResult.fold((l) {
      emit(_ExchangesError(message: mapFailureToMessage(l)));
    }, (r) {
      emit(_ExchangesSuccess(exchanges: r));
    });
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
class ExchangesState with _$ExchangesState {
  const factory ExchangesState.initialState() = _InitialPage;
  const factory ExchangesState.loadingState() = _ExchangesLoading;
  const factory ExchangesState.errorState({@Default('') String message}) =
      _ExchangesError;
  const factory ExchangesState.sucess({
    @Default([]) List<Currency> exchanges,
  }) = _ExchangesSuccess;
}
