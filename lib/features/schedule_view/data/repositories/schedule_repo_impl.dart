import 'package:train_time/core/resources/data_state.dart';
import 'package:train_time/features/schedule_view/data/datasources/remote/fetch_schedule.dart';
import 'package:train_time/features/schedule_view/data/models/train/dto/train_dto.dart';
import 'package:train_time/features/schedule_view/domain/entities/train/train_entity.dart';
import 'package:train_time/features/schedule_view/domain/entities/train/train_request.dart';
import 'package:train_time/features/schedule_view/domain/repositories/schedule_repo.dart';

class ScheduleRepoImpl implements ScheduleRepo {
  @override
  Future<DataState<List<TrainEntity>>> getTrains(TrainRequest req) async {
    try {
      final trainDTO = TrainDTO(
        departureStation: req.departureStation,
        arrivalStation: req.arrivalStation,
        rideDate: req.rideDate,
        startTime: req.startTime,
      );

      final trains = await fetchSchedule(trainDTO);
      final entity = trains.map((e) => TrainEntity.fromModel(e)).toList();

      return DataSuccess(entity);
    } catch (e) {
      return DataError(e);
    }
  }
}
