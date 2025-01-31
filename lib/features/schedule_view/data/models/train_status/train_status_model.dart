import 'package:freezed_annotation/freezed_annotation.dart';

part 'train_status_model.freezed.dart';
part 'train_status_model.g.dart';

@freezed
class TrainStatusModel with _$TrainStatusModel {
  factory TrainStatusModel({
    required String trainNo,
    required String status,
  }) = _TrainStatusModel;

  factory TrainStatusModel.fromJson(Map<String, dynamic> json) =>
      _$TrainStatusModelFromJson(json);
}
