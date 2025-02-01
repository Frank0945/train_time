class TrainDetailsParams {
  final DateTime rideDate;
  final String trainNo;
  final String trainType;
  final String departureStation;
  final String arrivalStation;

  TrainDetailsParams({
    required this.rideDate,
    required this.trainNo,
    required this.trainType,
    required this.departureStation,
    required this.arrivalStation,
  });
}
