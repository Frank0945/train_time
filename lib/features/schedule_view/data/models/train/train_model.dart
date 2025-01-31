import 'package:freezed_annotation/freezed_annotation.dart';

part 'train_model.freezed.dart';
part 'train_model.g.dart';

@freezed
class TrainModel with _$TrainModel {
  factory TrainModel({
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
  }) = _TrainModel;

  factory TrainModel.fromJson(Map<String, dynamic> json) =>
      _$TrainModelFromJson(json);
}
