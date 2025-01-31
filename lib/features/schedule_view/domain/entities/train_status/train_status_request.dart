class TrainStatusRequest {
  // (id, name)
  final (String, String) station;
  final DateTime rideDate;

  TrainStatusRequest({
    required this.station,
    required this.rideDate,
  });
}
