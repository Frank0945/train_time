import 'package:train_time/features/train_search/domain/entities/station_entity.dart';

abstract class PickerState {}

class PickerLoading extends PickerState {}

class PickerLoaded extends PickerState {
  final List<StationEntity> all;
  final List<StationInfoEntity> selectedStations;
  final int belongIdx;
  final int stationIdx;

  PickerLoaded({
    this.all = const [],
    this.selectedStations = const [],
    this.belongIdx = 0,
    this.stationIdx = 0,
  });

  PickerLoaded copyWith({
    List<StationEntity>? all,
    List<StationInfoEntity>? selectedStations,
    int? belongIdx,
    int? stationIdx,
  }) {
    return PickerLoaded(
      all: all ?? this.all,
      selectedStations: selectedStations ?? this.selectedStations,
      belongIdx: belongIdx ?? this.belongIdx,
      stationIdx: stationIdx ?? this.stationIdx,
    );
  }
}
