import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:train_time/features/train_search/data/models/station_model.dart';

part 'station_entity.freezed.dart';

@freezed
class StationEntity with _$StationEntity {
  factory StationEntity({
    required String belong,
    required String belongId,
    required List<StationInfoEntity> stations,
  }) = _StationEntity;

  factory StationEntity.fromModel(StationModel model) {
    return StationEntity(
      belong: model.belong,
      belongId: model.belongId,
      stations:
          model.stations.map((e) => StationInfoEntity.fromModel(e)).toList(),
    );
  }
}

@freezed
class StationInfoEntity with _$StationInfoEntity {
  factory StationInfoEntity({
    required String station,
    required String stationId,
  }) = _StationInfoEntity;

  factory StationInfoEntity.fromModel(StationInfoModel model) {
    return StationInfoEntity(
      station: model.station,
      stationId: model.stationId,
    );
  }
}
