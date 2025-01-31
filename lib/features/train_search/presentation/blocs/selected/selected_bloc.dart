import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_time/features/train_search/domain/entities/station_entity.dart';
import 'package:train_time/features/train_search/domain/enums/station_type.dart';
import 'package:train_time/features/train_search/domain/repositories/selected_station_repo.dart';
import 'package:train_time/features/train_search/domain/services/station_service.dart';
import 'package:train_time/features/train_search/domain/usecases/station_usecase.dart';
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_event.dart';
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_state.dart';

class SelectedBloc extends Bloc<SelectedEvent, SelectedState> {
  final StationUsecase stationUsecase;
  final SelectedStationRepo selectedStationRepo;

  List<StationEntity> _stations = [];

  SelectedBloc({
    required this.stationUsecase,
    required this.selectedStationRepo,
  }) : super(Loading()) {
    on<UpdateSelectedStation>(_onUpdateSelectedStation);
    on<LoadStationData>(_onLoadStationData);
    on<ApplyStation>(_onApplyStation);
    on<SwapStation>(_onSwapStation);
    on<UpdateSelectedDateTime>(_onUpdateSelectedDateTime);
    add(LoadStationData());
  }

  _onUpdateSelectedStation(
      UpdateSelectedStation event, Emitter<SelectedState> emit) {
    if (_stations.isEmpty) return;

    final (_, departureStationId) =
        selectedStationRepo.getSelectedStationId(StationType.departure);
    final (_, arrivalStationId) =
        selectedStationRepo.getSelectedStationId(StationType.arrival);

    final departureStation =
        StationService.findStationById(_stations, departureStationId);

    final arrivalStation =
        StationService.findStationById(_stations, arrivalStationId);

    // update the stations only, keep the date and time
    if (state is ShowSelected) {
      final showSelectedState = state as ShowSelected;
      emit(showSelectedState.copyWith(
        departureStation: departureStation,
        arrivalStation: arrivalStation,
      ));
      return;
    }
    // initial state
    emit(ShowSelected(
      departureStation: departureStation,
      arrivalStation: arrivalStation,
    ));
  }

  void _onApplyStation(ApplyStation event, Emitter<SelectedState> emit) {
    String belongId = event.belongId;
    String stationId = event.stationId;

    if (event.stationName != null) {
      final ids = StationService.findBelongAndStationIdByStationName(
        _stations,
        event.stationName!,
      );
      belongId = ids.$1;
      stationId = ids.$2;
    }

    selectedStationRepo.saveSelectedStationId(
      event.stationType,
      belongId,
      stationId,
    );
    add(UpdateSelectedStation());
  }

  void _onSwapStation(SwapStation event, Emitter<SelectedState> emit) async {
    final (departureBelongId, departureStationId) =
        selectedStationRepo.getSelectedStationId(StationType.departure);
    final (arrivalBelongId, arrivalStationId) =
        selectedStationRepo.getSelectedStationId(StationType.arrival);

    selectedStationRepo.saveSelectedStationId(
      StationType.departure,
      arrivalBelongId,
      arrivalStationId,
    );
    selectedStationRepo.saveSelectedStationId(
      StationType.arrival,
      departureBelongId,
      departureStationId,
    );

    add(UpdateSelectedStation());
  }

  void _onLoadStationData(
      LoadStationData event, Emitter<SelectedState> emmit) async {
    final dataState = await stationUsecase.call();

    _stations = dataState.data!;

    add(UpdateSelectedStation());
  }

  void _onUpdateSelectedDateTime(
      UpdateSelectedDateTime event, Emitter<SelectedState> emit) {
    final showSelectedState = state as ShowSelected;

    emit(showSelectedState.copyWith(
      date: event.date,
      time: event.time,
    ));
  }
}
