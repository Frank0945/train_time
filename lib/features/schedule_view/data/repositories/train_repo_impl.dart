import 'package:train_time/core/resources/data_state.dart';
import 'package:train_time/features/schedule_view/data/datasources/remote/fetch_trains_status.dart';
import 'package:train_time/features/schedule_view/data/models/train_status/dto/train_status_dto.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_status/train_status_entity.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_status/train_status_request.dart';
import 'package:train_time/features/schedule_view/domain/repositories/train_repo.dart';

class TrainRepoImpl implements TrainRepo {
  @override
  Future<DataState<List<TrainStatusEntity>>> getTrainsStatus(
      TrainStatusRequest req) async {
    try {
      final trainStatusDTO = TrainStatusDTO(
        station: req.station,
        rideDate: req.rideDate,
      );

      final trains = await fetchTrainsStatus(trainStatusDTO);
      final entity = trains.map((e) => TrainStatusEntity.fromModel(e)).toList();

      return DataSuccess(entity);
    } catch (e) {
      return DataError(e);
    }
  }
}
