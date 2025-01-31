// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StationModelImpl _$$StationModelImplFromJson(Map<String, dynamic> json) =>
    _$StationModelImpl(
      belong: json['belong'] as String,
      belongId: json['belongId'] as String,
      stations: (json['stations'] as List<dynamic>)
          .map((e) => StationInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StationModelImplToJson(_$StationModelImpl instance) =>
    <String, dynamic>{
      'belong': instance.belong,
      'belongId': instance.belongId,
      'stations': instance.stations,
    };

_$StationInfoModelImpl _$$StationInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$StationInfoModelImpl(
      station: json['station'] as String,
      stationId: json['stationId'] as String,
    );

Map<String, dynamic> _$$StationInfoModelImplToJson(
        _$StationInfoModelImpl instance) =>
    <String, dynamic>{
      'station': instance.station,
      'stationId': instance.stationId,
    };
