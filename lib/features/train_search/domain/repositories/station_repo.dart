import 'package:train_time/core/resources/data_state.dart';
import 'package:train_time/features/train_search/domain/entities/station_entity.dart';

abstract class StationRepo {
  Future<DataState<List<StationEntity>>> getStations();
}
