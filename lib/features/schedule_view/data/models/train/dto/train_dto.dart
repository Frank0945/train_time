import 'package:flutter/material.dart';

class TrainDTO {
  // (id, name)
  final (String, String) departureStation;
  // (id, name)
  final (String, String) arrivalStation;
  final DateTime rideDate;
  final TimeOfDay startTime;

  TrainDTO({
    required this.departureStation,
    required this.arrivalStation,
    required this.rideDate,
    required this.startTime,
  });
}
