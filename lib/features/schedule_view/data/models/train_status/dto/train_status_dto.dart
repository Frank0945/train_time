class TrainStatusDTO {
  // (id, name)
  final (String, String) station;
  final DateTime rideDate;

  TrainStatusDTO({
    required this.station,
    required this.rideDate,
  });
}
