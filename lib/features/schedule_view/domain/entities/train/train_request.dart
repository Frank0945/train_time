import 'package:flutter/material.dart';

class TrainRequest {
  // (id, name)
  final (String, String) departureStation;
  // (id, name)
  final (String, String) arrivalStation;
  final DateTime rideDate;
  final TimeOfDay startTime;

  TrainRequest({
    required this.departureStation,
    required this.arrivalStation,
    required this.rideDate,
    required this.startTime,
  });
}
