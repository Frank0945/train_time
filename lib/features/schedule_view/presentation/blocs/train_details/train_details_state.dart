import 'package:train_time/features/schedule_view/domain/entities/train_details/train_details_entity.dart';

abstract class TrainDetailsState {}

class TrainDetailsLoading extends TrainDetailsState {}

class TrainDetailsLoaded extends TrainDetailsState {
  final TrainDetailsEntity trainDetails;

  TrainDetailsLoaded({
    required this.trainDetails,
  });
}

class TrainDetailsError extends TrainDetailsState {
  final String msg;

  TrainDetailsError({
    required this.msg,
  });
}
