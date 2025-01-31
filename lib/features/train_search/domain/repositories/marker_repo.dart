import 'package:train_time/core/storage/shared_preferences_service.dart';

class MarkerRepo {
  final SharedPreferencesService prefs;

  MarkerRepo(this.prefs);

  Future<void> saveMarkedStationIds(List<(String, String)> ids) async {
    await prefs.setStringList(
      'markedStations',
      ids.map((e) => '${e.$1},${e.$2}').toList(),
    );
  }

  List<(String, String)> getMarkedStationIds() {
    final List<String> ids = prefs.getStringList('markedStations') ?? [];
    return ids.map((e) {
      final parts = e.split(',');
      return (parts[0], parts[1]);
    }).toList();
  }
}
