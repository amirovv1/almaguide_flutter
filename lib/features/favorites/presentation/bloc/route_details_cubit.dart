import 'package:almaguide_flutter/core/errors/failure.dart';
import 'package:almaguide_flutter/features/favorites/domain/favorites_repository.dart';
import 'package:almaguide_flutter/features/home/domain/models/attraction_dto.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'route_details_cubit.freezed.dart';

@singleton
class RouteDetailsCubit extends Cubit<RouteDetailsState> {
  final FavoritesRepository repo;

  RouteDetailsCubit(this.repo) : super(const RouteDetailsState.initialState());

  Future<void> initRouteDetails({required int id}) async {
    emit(const _RouteDetailsLoading());
    final result = await repo.getAttractByRouteId(id: id
       );

    result.fold((l) {
      emit(_RouteDetailsError(message: mapFailureToMessage(l)));
    }, (r) {
      emit(_RouteDetailsSuccess(attracts:r ));
    });

   
  }
}


@freezed
class RouteDetailsState with _$RouteDetailsState {
  const factory RouteDetailsState.initialState() = _InitialPage;
  const factory RouteDetailsState.loadingState() = _RouteDetailsLoading;
  const factory RouteDetailsState.errorState({@Default('') String message}) =
      _RouteDetailsError;
  const factory RouteDetailsState.sucess(
      {@Default([]) List<AttractionDto> attracts}) = _RouteDetailsSuccess;
}
