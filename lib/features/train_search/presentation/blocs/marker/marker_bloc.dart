import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_time/features/train_search/domain/entities/station_entity.dart';
import 'package:train_time/features/train_search/domain/repositories/marker_repo.dart';
import 'package:train_time/features/train_search/domain/services/station_service.dart';
import 'package:train_time/features/train_search/domain/usecases/station_usecase.dart';
import 'package:train_time/features/train_search/presentation/blocs/marker/marker_event.dart';
import 'package:train_time/features/train_search/presentation/blocs/marker/marker_state.dart';

class MarkerBloc extends Bloc<MarkerEvent, MarkerState> {
  final MarkerRepo markerRepo;
  final StationUsecase stationUsecase;

  List<(String, String)> _markedStationIds = [];
  List<StationEntity> _stations = [];

  MarkerBloc({
    required this.markerRepo,
    required this.stationUsecase,
  }) : super(MarkerState(markedStationNames: [])) {
    on<MarkStation>(_onMarkStation);
    on<UpdateMarker>(_onUpdateMarker);
    on<UnmarkStationByNames>(_onUnmarkStationByNames);
    on<UnmarkStationByIndex>(_onUnmarkStationByIndex);
    _initMarkedStations();
  }

  void _initMarkedStations() async {
    final dataState = await stationUsecase.call();
    _stations = dataState.data!;
    _markedStationIds = markerRepo.getMarkedStationIds();

    add(UpdateMarker());
  }

  void _onUpdateMarker(UpdateMarker event, Emitter<MarkerState> emit) {
    markerRepo.saveMarkedStationIds(_markedStationIds);

    final markedStationNames = _markedStationIds
        .map((e) => (
              StationService.findStationById(_stations, e.$1).station,
              StationService.findStationById(_stations, e.$2).station,
            ))
        .toList();

    emit(MarkerState(markedStationNames: markedStationNames));
  }

  void _onMarkStation(MarkStation event, Emitter<MarkerState> emit) {
    _markedStationIds.add((event.departureStationId, event.arrivalStationId));
    add(UpdateMarker());
  }

  void _onUnmarkStationByNames(
      UnmarkStationByNames event, Emitter<MarkerState> emit) {
    _markedStationIds.removeWhere((e) =>
        e.$1 == event.departureStationId && e.$2 == event.arrivalStationId);
    add(UpdateMarker());
  }

  void _onUnmarkStationByIndex(
      UnmarkStationByIndex event, Emitter<MarkerState> emit) {
    _markedStationIds.removeAt(event.index);
    add(UpdateMarker());
  }
}
