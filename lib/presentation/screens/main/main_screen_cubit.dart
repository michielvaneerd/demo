import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:funda/core/app_exception.dart';
import 'package:funda/core/constants.dart';
import 'package:funda/core/helpers.dart';
import 'package:funda/domain/entities/list_house_entity.dart';
import 'package:funda/domain/use_cases/house_use_cases.dart';

abstract class MainScreenState extends Equatable {
  @override
  List<Object?> get props => [];
}

class MainSCreenStateInitial extends MainScreenState {}

class MainSCreenStateBusy extends MainScreenState {}

class MainScreenStateError extends MainScreenState {
  final AppException appException;
  MainScreenStateError({required this.appException});
  @override
  List<Object?> get props => [appException];
}

class MainScreenStateSuccess extends MainScreenState {
  final List<ListHouseEntity> houses;
  MainScreenStateSuccess({required this.houses});
  @override
  List<Object?> get props => [houses];
}

class MainScreenCubit extends Cubit<MainScreenState> {
  final HouseUseCases _houseUseCases;
  MainScreenCubit(this._houseUseCases) : super(MainSCreenStateInitial());

  void getHouses() async {
    if (Constants.apiKey.isEmpty) {
      emit(MainScreenStateError(
          appException: const AppException(
              message: '', code: Constants.errorCodeMissingApiKey)));
      return;
    }
    try {
      if (!await isOnline()) {
        emit(MainScreenStateError(
            appException: const AppException(
                message: '', code: Constants.errorCodeConnection)));
      } else {
        final houses = await _houseUseCases.getHouses();
        emit(MainScreenStateSuccess(houses: houses));
      }
    } on Exception catch (ex) {
      emit(MainScreenStateError(appException: AppException.fromException(ex)));
    }
  }
}
