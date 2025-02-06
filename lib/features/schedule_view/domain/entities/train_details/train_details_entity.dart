import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:train_time/features/schedule_view/data/models/train_details/train_details_model.dart';

part 'train_details_entity.freezed.dart';

@freezed
class TrainDetailsEntity with _$TrainDetailsEntity {
  factory TrainDetailsEntity({
    required List<String> tags,
    required String note,
    required List<TrainDetailsStationEntity> stations,
    required String status,
  }) = _TrainDetailsEntity;

  factory TrainDetailsEntity.fromModel(TrainDetailsModel model) {
    return TrainDetailsEntity(
      tags: model.tags,
      note: model.note,
      stations: model.stations
          .map((e) => TrainDetailsStationEntity.fromModel(e))
          .toList(),
      status: model.status,
    );
  }
}

@freezed
class TrainDetailsStationEntity with _$TrainDetailsStationEntity {
  factory TrainDetailsStationEntity({
    required String station,
    required String departureTime,
    required String arrivalTime,
  }) = _TrainDetailsStationEntity;

  factory TrainDetailsStationEntity.fromModel(TrainDetailsStationModel model) {
    return TrainDetailsStationEntity(
      station: model.station,
      departureTime: model.departureTime,
      arrivalTime: model.arrivalTime,
    );
  }
}
