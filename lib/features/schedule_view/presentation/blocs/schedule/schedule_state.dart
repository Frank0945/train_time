import 'package:train_time/features/schedule_view/domain/entities/train/train_entity.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_status/train_status_entity.dart';

abstract class ScheduleState {}

class ScheduleLoading extends ScheduleState {}

class ScheduleLoaded extends ScheduleState {
  final List<TrainEntity> trains;
  final List<TrainStatusEntity> trainsStatus;
  final String? msg;

  ScheduleLoaded({
    this.trains = const [],
    this.trainsStatus = const [],
    this.msg,
  });
}
