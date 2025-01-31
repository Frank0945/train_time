import 'package:train_time/core/resources/data_state.dart';
import 'package:train_time/core/usecase/usecase.dart';
import 'package:train_time/features/schedule_view/domain/entities/train/train_entity.dart';
import 'package:train_time/features/schedule_view/domain/entities/train/train_request.dart';
import 'package:train_time/features/schedule_view/domain/repositories/schedule_repo.dart';

class ScheduleUsecase
    implements UseCase<DataState<List<TrainEntity>>, TrainRequest> {
  final ScheduleRepo _scheduleRepo;

  ScheduleUsecase(this._scheduleRepo);

  @override
  Future<DataState<List<TrainEntity>>> call({required TrainRequest params}) {
    return _scheduleRepo.getTrains(params);
  }
}
