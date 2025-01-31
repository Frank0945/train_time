import 'package:train_time/core/resources/data_state.dart';
import 'package:train_time/features/train_search/data/datasources/local/fetch_stations.dart';
import 'package:train_time/features/train_search/domain/entities/station_entity.dart';
import 'package:train_time/features/train_search/domain/repositories/station_repo.dart';

class StationRepoImpl implements StationRepo {
  @override
  Future<DataState<List<StationEntity>>> getStations() async {
    final stations = await fetchStations();

    return DataSuccess(
        stations.map((e) => StationEntity.fromModel(e)).toList());
  }
}
