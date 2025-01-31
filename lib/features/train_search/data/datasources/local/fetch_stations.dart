import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:train_time/features/train_search/data/models/station_model.dart';

List<StationModel> _stations = [];

Future<List<StationModel>> fetchStations() async {
  if (_stations.isNotEmpty) return _stations;

  final jsonString = await rootBundle.loadString('assets/stations.json');
  final json = jsonDecode(jsonString) as List;
  _stations = json.map((e) => StationModel.fromJson(e)).toList();
  return _stations;
}
