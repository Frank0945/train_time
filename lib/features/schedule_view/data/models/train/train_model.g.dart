// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainModelImpl _$$TrainModelImplFromJson(Map<String, dynamic> json) =>
    _$TrainModelImpl(
      trainType: json['trainType'] as String,
      trainNo: json['trainNo'] as String,
      startStation: json['startStation'] as String,
      endStation: json['endStation'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      duration: json['duration'] as String,
      price: json['price'] as String,
      via: json['via'] as String,
      trainTypeCode: json['trainTypeCode'] as String,
      isBookable: json['isBookable'] as bool,
    );

Map<String, dynamic> _$$TrainModelImplToJson(_$TrainModelImpl instance) =>
    <String, dynamic>{
      'trainType': instance.trainType,
      'trainNo': instance.trainNo,
      'startStation': instance.startStation,
      'endStation': instance.endStation,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'duration': instance.duration,
      'price': instance.price,
      'via': instance.via,
      'trainTypeCode': instance.trainTypeCode,
      'isBookable': instance.isBookable,
    };
