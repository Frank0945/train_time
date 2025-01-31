import 'package:train_time/core/resources/data_state.dart';
import 'package:train_time/core/usecase/usecase.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_status/train_status_entity.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_status/train_status_request.dart';
import 'package:train_time/features/schedule_view/domain/repositories/train_repo.dart';

class TrainStatusUsecase
    implements UseCase<DataState<List<TrainStatusEntity>>, TrainStatusRequest> {
  final TrainRepo _trainStatusRepo;

  TrainStatusUsecase(this._trainStatusRepo);

  @override
  Future<DataState<List<TrainStatusEntity>>> call(
      {required TrainStatusRequest params}) {
    return _trainStatusRepo.getTrainsStatus(params);
  }
}
