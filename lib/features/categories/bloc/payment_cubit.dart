import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/features/categories/domain/categories_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payment_cubit.freezed.dart';

@singleton
class PaymentCubit extends Cubit<PaymentState> {
  final CategoriesRepository repo;

  PaymentCubit(this.repo) : super(const PaymentState.initialState());

  Future<void> pay({required int id}) async {
    emit(const _PaymentLoading());
    final result = await repo.payTour(id: id);
    result.fold((l) {
      emit(_PaymentError(message: mapFailureToMessage(l)));
    }, (r) {
      emit(const _PaymentSuccess());
    });
  }
}

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initialState() = _InitialPage;
  const factory PaymentState.loadingState() = _PaymentLoading;
  const factory PaymentState.errorState({@Default('') String message}) =
      _PaymentError;
  const factory PaymentState.sucess() = _PaymentSuccess;
}
