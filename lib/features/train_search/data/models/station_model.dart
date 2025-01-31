import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_model.freezed.dart';
part 'station_model.g.dart';

@freezed
class StationModel with _$StationModel {
  factory StationModel({
    required String belong,
    required String belongId,
    required List<StationInfoModel> stations,
  }) = _StationModel;

  factory StationModel.fromJson(Map<String, dynamic> json) =>
      _$StationModelFromJson(json);
}

@freezed
class StationInfoModel with _$StationInfoModel {
  factory StationInfoModel({
    required String station,
    required String stationId,
  }) = _StationInfoModel;

  factory StationInfoModel.fromJson(Map<String, dynamic> json) =>
      _$StationInfoModelFromJson(json);
}
