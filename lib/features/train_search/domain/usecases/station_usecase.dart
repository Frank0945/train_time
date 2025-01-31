import 'package:train_time/core/resources/data_state.dart';
import 'package:train_time/core/usecase/usecase.dart';
import 'package:train_time/features/train_search/domain/entities/station_entity.dart';
import 'package:train_time/features/train_search/domain/repositories/station_repo.dart';

class StationUsecase
    implements UseCase<DataState<List<StationEntity>>, NoParams> {
  final StationRepo _stationRepo;

  StationUsecase(this._stationRepo);

  @override
  Future<DataState<List<StationEntity>>> call({NoParams? params}) {
    return _stationRepo.getStations();
  }
}
