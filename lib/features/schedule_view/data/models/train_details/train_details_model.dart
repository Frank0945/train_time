import 'package:freezed_annotation/freezed_annotation.dart';

part 'train_details_model.freezed.dart';
part 'train_details_model.g.dart';

@freezed
class TrainDetailsModel with _$TrainDetailsModel {
  factory TrainDetailsModel({
    required List<String> tags,
    required String note,
    required List<TrainDetailsStationModel> stations,
    required String status,
  }) = _TrainDetailsModel;

  factory TrainDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$TrainDetailsModelFromJson(json);
}

@freezed
class TrainDetailsStationModel with _$TrainDetailsStationModel {
  factory TrainDetailsStationModel({
    required String station,
    required String departureTime,
    required String arrivalTime,
  }) = _TrainDetailsStationModel;

  factory TrainDetailsStationModel.fromJson(Map<String, dynamic> json) =>
      _$TrainDetailsStationModelFromJson(json);
}
