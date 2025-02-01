import 'package:train_time/core/resources/data_state.dart';
import 'package:train_time/core/usecase/usecase.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_details/train_details_entity.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_details/train_details_request.dart';
import 'package:train_time/features/schedule_view/domain/repositories/train_repo.dart';

class TrainDetailsUsecase
    implements UseCase<DataState<TrainDetailsEntity>, TrainDetailsRequest> {
  final TrainRepo _trainStatusRepo;

  TrainDetailsUsecase(this._trainStatusRepo);

  @override
  Future<DataState<TrainDetailsEntity>> call(
      {required TrainDetailsRequest params}) {
    return _trainStatusRepo.getTrainDetails(params);
  }
}
