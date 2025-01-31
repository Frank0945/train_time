import 'package:train_time/features/train_search/domain/entities/station_entity.dart';
import 'package:train_time/features/train_search/domain/enums/station_type.dart';

class StationService {
  static int getDefaultBelongIndex(StationType type) {
    return (type == StationType.departure) ? 2 : 14;
  }

  static int getDefaultStationIndex(StationType type) {
    return (type == StationType.departure) ? 2 : 11;
  }

  static String getDefaultBelongId(StationType type) {
    return (type == StationType.departure) ? "city63000" : "city64000";
  }

  static String getDefaultStationId(StationType type) {
    return (type == StationType.departure) ? "1000" : "4400";
  }

  static (int, int) findStationIndexById(
      List<StationEntity> stations, String belongId, String stationId) {
    int belongIdx =
        stations.indexWhere((element) => element.belongId == belongId);
    int stationIdx = stations[belongIdx].stations.indexWhere(
          (element) => element.stationId == stationId,
        );
    return (belongIdx, stationIdx);
  }

  static StationInfoEntity findStationById(
      List<StationEntity> stations, String stationId) {
    return stations
        .expand((e) => e.stations)
        .firstWhere((s) => s.stationId == stationId);
  }

  static (String, String) findBelongAndStationIdByStationName(
      List<StationEntity> stations, String stationName) {
    final belong = stations.firstWhere(
      (element) => element.stations.any((s) => s.station == stationName),
    );
    final station = belong.stations.firstWhere(
      (element) => element.station == stationName,
    );
    return (belong.belongId, station.stationId);
  }
}
