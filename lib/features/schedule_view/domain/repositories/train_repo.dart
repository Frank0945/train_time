import 'package:train_time/core/resources/data_state.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_status/train_status_entity.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_status/train_status_request.dart';

abstract class TrainRepo {
  Future<DataState<List<TrainStatusEntity>>> getTrainsStatus(
      TrainStatusRequest req);
}
