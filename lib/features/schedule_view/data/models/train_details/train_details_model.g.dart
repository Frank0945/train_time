// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainDetailsModelImpl _$$TrainDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainDetailsModelImpl(
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      note: json['note'] as String,
      stations: (json['stations'] as List<dynamic>)
          .map((e) =>
              TrainDetailsStationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrainDetailsModelImplToJson(
        _$TrainDetailsModelImpl instance) =>
    <String, dynamic>{
      'tags': instance.tags,
      'note': instance.note,
      'stations': instance.stations,
    };

_$TrainDetailsStationModelImpl _$$TrainDetailsStationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainDetailsStationModelImpl(
      station: json['station'] as String,
      departureTime: json['departureTime'] as String,
      arrivalTime: json['arrivalTime'] as String,
    );

Map<String, dynamic> _$$TrainDetailsStationModelImplToJson(
        _$TrainDetailsStationModelImpl instance) =>
    <String, dynamic>{
      'station': instance.station,
      'departureTime': instance.departureTime,
      'arrivalTime': instance.arrivalTime,
    };
