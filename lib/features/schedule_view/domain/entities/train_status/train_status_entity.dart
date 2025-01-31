import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:train_time/features/schedule_view/data/models/train_status/train_status_model.dart';

part 'train_status_entity.freezed.dart';

@freezed
class TrainStatusEntity with _$TrainStatusEntity {
  factory TrainStatusEntity({
    required String trainNo,
    required String status,
  }) = _TrainStatusEntity;

  factory TrainStatusEntity.fromModel(TrainStatusModel model) {
    return TrainStatusEntity(
      trainNo: model.trainNo,
      status: model.status,
    );
  }
}
