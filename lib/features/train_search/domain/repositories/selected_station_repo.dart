import 'package:train_time/core/storage/shared_preferences_service.dart';
import 'package:train_time/features/train_search/domain/enums/station_type.dart';
import 'package:train_time/features/train_search/domain/services/station_service.dart';

class SelectedStationRepo {
  final SharedPreferencesService prefs;

  SelectedStationRepo(this.prefs);

  Future<void> saveSelectedStationId(
      StationType stationType, String stationId, String belongId) async {
    await prefs.setStringList(
      stationType.toString(),
      [stationId, belongId],
    );
  }

  /// @return (belongId, stationId)
  (String, String) getSelectedStationId(StationType stationType) {
    final List<String> ids = prefs.getStringList(stationType.toString()) ??
        [
          StationService.getDefaultBelongId(stationType),
          StationService.getDefaultStationId(stationType),
        ];
    return (ids[0], ids[1]);
  }
}
