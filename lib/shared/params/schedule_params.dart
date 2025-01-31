import 'package:flutter/material.dart';

class ScheduleParams {
  final String departureStationId;
  final String departureStationName;
  final String arrivalStationId;
  final String arrivalStationName;
  final DateTime date;
  final TimeOfDay time;

  ScheduleParams({
    required this.departureStationId,
    required this.departureStationName,
    required this.arrivalStationId,
    required this.arrivalStationName,
    required this.date,
    required this.time,
  });
}
