import 'package:train_time/core/resources/data_state.dart';
import 'package:train_time/features/schedule_view/domain/entities/train/train_entity.dart';
import 'package:train_time/features/schedule_view/domain/entities/train/train_request.dart';

abstract class ScheduleRepo {
  Future<DataState<List<TrainEntity>>> getTrains(TrainRequest trainRequest);
}
