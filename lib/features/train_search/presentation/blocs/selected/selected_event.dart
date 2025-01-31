import 'package:flutter/material.dart';
import 'package:train_time/features/train_search/domain/enums/station_type.dart';

abstract class SelectedEvent {}

class UpdateSelectedStation extends SelectedEvent {}

class LoadStationData extends SelectedEvent {}

class ApplyStation extends SelectedEvent {
  final StationType stationType;
  final String belongId;
  final String stationId;
  final String? stationName;

  ApplyStation({
    required this.stationType,
    this.belongId = "",
    this.stationId = "",
    this.stationName,
  }) : assert(
          (belongId.isNotEmpty && stationId.isNotEmpty) || stationName != null,
          'Either belongId and stationId must be provided, or stationName must be provided.',
        );
}

class SwapStation extends SelectedEvent {}

class UpdateSelectedDateTime extends SelectedEvent {
  final DateTime? date;
  final TimeOfDay? time;

  UpdateSelectedDateTime({
    this.date,
    this.time,
  });
}
