import 'package:train_time/features/train_search/domain/entities/station_entity.dart';
import 'package:train_time/features/train_search/domain/repositories/selected_station_repo.dart';
import 'package:train_time/features/train_search/domain/services/station_service.dart';
import 'package:train_time/features/train_search/domain/usecases/station_usecase.dart';
import 'package:train_time/features/train_search/presentation/blocs/picker/picker_event.dart';
import 'package:train_time/features/train_search/presentation/blocs/picker/picker_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PickerBloc extends Bloc<PickerEvent, PickerState> {
  final StationUsecase stationUsecase;
  final SelectedStationRepo selectedStationRepo;

  List<StationEntity> _stations = [];

  PickerBloc({
    required this.stationUsecase,
    required this.selectedStationRepo,
  }) : super(PickerLoading()) {
    on<LoadStationData>(_onLoadStationData);
    on<UpdatePicker>(_onUpdatePicker);
    on<ChangeBelong>(_onChangeBelong);
    add(LoadStationData());
  }

  void _onUpdatePicker(UpdatePicker event, Emitter<PickerState> emmit) {
    if (_stations.isEmpty) return;

    final (belongId, stationId) =
        selectedStationRepo.getSelectedStationId(event.stationType);

    final (belongIdx, stationIdx) =
        StationService.findStationIndexById(_stations, belongId, stationId);

    final loadedState = state as PickerLoaded;

    emmit(loadedState.copyWith(
      all: _stations,
      selectedStations: _stations[belongIdx].stations,
      belongIdx: belongIdx,
      stationIdx: stationIdx,
    ));
  }

  void _onLoadStationData(
      LoadStationData event, Emitter<PickerState> emmit) async {
    final dataState = await stationUsecase.call();

    _stations = dataState.data!;

    emmit(PickerLoaded(all: _stations));
  }

  void _onChangeBelong(ChangeBelong event, Emitter<PickerState> emmit) async {
    final selected =
        _stations.firstWhere((element) => element.belongId == event.belongId);
    final loadedState = state as PickerLoaded;

    emmit(
      loadedState.copyWith(
        selectedStations: selected.stations,
        belongIdx: _stations.indexOf(selected),
        stationIdx: 0,
      ),
    );
  }
}
