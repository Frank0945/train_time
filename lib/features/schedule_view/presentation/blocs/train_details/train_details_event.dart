import 'package:train_time/features/schedule_view/domain/entities/train_details/train_details_request.dart';

abstract class TrainDetailsEvent {}

class LoadTrainDetails extends TrainDetailsEvent {
  final TrainDetailsRequest trainDetailsRequest;

  LoadTrainDetails(this.trainDetailsRequest);
}
