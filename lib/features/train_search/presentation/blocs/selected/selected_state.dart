import 'package:flutter/material.dart';
import 'package:train_time/features/train_search/domain/entities/station_entity.dart';

abstract class SelectedState {}

class Loading extends SelectedState {}

final _date = DateTime.now();
final _time = TimeOfDay.now();

class ShowSelected extends SelectedState {
  final StationInfoEntity departureStation;
  final StationInfoEntity arrivalStation;
  final DateTime date;
  final TimeOfDay time;

  ShowSelected({
    required this.departureStation,
    required this.arrivalStation,
    DateTime? date,
    TimeOfDay? time,
  })  : date = date ?? _date,
        time = time ?? _time;

  ShowSelected copyWith({
    StationInfoEntity? departureStation,
    StationInfoEntity? arrivalStation,
    DateTime? date,
    TimeOfDay? time,
  }) {
    return ShowSelected(
      departureStation: departureStation ?? this.departureStation,
      arrivalStation: arrivalStation ?? this.arrivalStation,
      date: date ?? this.date,
      time: time ?? this.time,
    );
  }
}
