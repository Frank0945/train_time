import 'package:train_time/features/schedule_view/domain/entities/train_status/train_status_entity.dart';

class TrainService {
  static bool isLocalTrain(String type) {
    return type.contains("區間");
  }

  static bool isOnTime(String status) {
    return status == '準點';
  }

  static String getTrainStatus(
      List<TrainStatusEntity> trainsStatus, String trainNo) {
    final trainStatus = trainsStatus.firstWhere(
      (e) => e.trainNo == trainNo,
      orElse: () => TrainStatusEntity(trainNo: trainNo, status: ''),
    );

    return trainStatus.status;
  }
}
