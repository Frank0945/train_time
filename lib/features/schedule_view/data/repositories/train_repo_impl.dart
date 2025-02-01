import 'package:train_time/core/resources/data_state.dart';
import 'package:train_time/features/schedule_view/data/datasources/remote/fetch_train_details.dart';
import 'package:train_time/features/schedule_view/data/datasources/remote/fetch_trains_status.dart';
import 'package:train_time/features/schedule_view/data/models/train_details/dto/train_details_dto.dart';
import 'package:train_time/features/schedule_view/data/models/train_status/dto/train_status_dto.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_details/train_details_entity.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_details/train_details_request.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_status/train_status_entity.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_status/train_status_request.dart';
import 'package:train_time/features/schedule_view/domain/repositories/train_repo.dart';

class TrainRepoImpl implements TrainRepo {
  @override
  Future<DataState<List<TrainStatusEntity>>> getTrainsStatus(
      TrainStatusRequest req) async {
    try {
      final trainStatusDTO = TrainStatusDTO(
        station: req.station,
        rideDate: req.rideDate,
      );

      final trains = await fetchTrainsStatus(trainStatusDTO);
      final entity = trains.map((e) => TrainStatusEntity.fromModel(e)).toList();

      return DataSuccess(entity);
    } catch (e) {
      return DataError(e);
    }
  }

  @override
  Future<DataState<TrainDetailsEntity>> getTrainDetails(
      TrainDetailsRequest req) async {
    try {
      final trainDetailsDTO = TrainDetailsDTO(
        rideDate: req.rideDate,
        trainNo: req.trainNo,
      );

      final trainDetails = await fetchTrainDetails(trainDetailsDTO);
      final entity = TrainDetailsEntity.fromModel(trainDetails);

      return DataSuccess(entity);
    } catch (e) {
      return DataError(e);
    }
  }
}
