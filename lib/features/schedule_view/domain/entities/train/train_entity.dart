import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:train_time/features/schedule_view/data/models/train/train_model.dart';

part 'train_entity.freezed.dart';

@freezed
class TrainEntity with _$TrainEntity {
  factory TrainEntity({
    required String trainType,
    required String trainNo,
    required String startStation,
    required String endStation,
    required String startTime,
    required String endTime,
    required String duration,
    required String price,
    required String via,
    required String trainTypeCode,
    required bool isBookable,
  }) = _TrainEntity;

  factory TrainEntity.fromModel(TrainModel model) {
    return TrainEntity(
      trainType: model.trainType,
      trainNo: model.trainNo,
      startStation: model.startStation,
      endStation: model.endStation,
      startTime: model.startTime,
      endTime: model.endTime,
      duration: model.duration,
      price: model.price,
      via: model.via,
      trainTypeCode: model.trainTypeCode,
      isBookable: model.isBookable,
    );
  }
}
