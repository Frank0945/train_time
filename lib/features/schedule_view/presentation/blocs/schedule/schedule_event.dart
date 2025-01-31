import 'package:train_time/features/schedule_view/domain/entities/train/train_request.dart';

abstract class ScheduleEvent {}

class LoadSchedule extends ScheduleEvent {
  final TrainRequest trainRequest;

  LoadSchedule({
    required this.trainRequest,
  });
}
