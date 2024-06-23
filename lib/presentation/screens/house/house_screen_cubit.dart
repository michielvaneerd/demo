import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funda/core/app_exception.dart';
import 'package:funda/domain/entities/house_entity.dart';
import 'package:funda/domain/use_cases/house_use_cases.dart';

abstract class HouseScreenState extends Equatable {
  const HouseScreenState();
  @override
  List<Object?> get props => [];
}

class HouseScreenStateInitial extends HouseScreenState {}

class HouseScreenStateBusy extends HouseScreenState {}

class HouseScreenStateError extends HouseScreenState {
  final AppException appException;
  const HouseScreenStateError({required this.appException}) : super();
  @override
  List<Object?> get props => [appException];
}

class HouseScreenStateSuccess extends HouseScreenState {
  final HouseEntity house;
  const HouseScreenStateSuccess({required this.house}) : super();
  @override
  List<Object?> get props => [house];
}

class HouseScreenCubit extends Cubit<HouseScreenState> {
  final HouseUseCases _houseUseCases;
  HouseScreenCubit(this._houseUseCases) : super(HouseScreenStateInitial());

  void getHouse(String id) async {
    try {
      final house = await _houseUseCases.getHouse(id: id);
      emit(HouseScreenStateSuccess(house: house));
    } on Exception catch (ex) {
      emit(HouseScreenStateError(appException: AppException.fromException(ex)));
    }
  }
}
