abstract class MarkerEvent {}

class UpdateMarker extends MarkerEvent {}

class MarkStation extends MarkerEvent {
  final String departureStationId;
  final String arrivalStationId;

  MarkStation({
    required this.departureStationId,
    required this.arrivalStationId,
  });
}

class UnmarkStationByNames extends MarkerEvent {
  final String departureStationId;
  final String arrivalStationId;

  UnmarkStationByNames({
    required this.departureStationId,
    required this.arrivalStationId,
  });
}

class UnmarkStationByIndex extends MarkerEvent {
  final int index;

  UnmarkStationByIndex(this.index);
}
