class MarkerState {
  // (departure, arrival)
  final List<(String, String)> markedStationNames;

  MarkerState({
    required this.markedStationNames,
  });

  bool containsMarkedStation(String departureName, String arrivalName) {
    return markedStationNames.contains((departureName, arrivalName));
  }
}
