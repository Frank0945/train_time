import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_time/core/utils/formatters.dart';
import 'package:train_time/core/resources/data_state.dart';
import 'package:train_time/features/schedule_view/domain/entities/train/train_entity.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_status/train_status_entity.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_status/train_status_request.dart';
import 'package:train_time/features/schedule_view/domain/usecases/schedule_usecase.dart';
import 'package:train_time/features/schedule_view/domain/usecases/train_status_usecase.dart';
import 'package:train_time/features/schedule_view/presentation/blocs/schedule/schedule_event.dart';
import 'package:train_time/features/schedule_view/presentation/blocs/schedule/schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  final ScheduleUsecase scheduleUsecase;
  final TrainStatusUsecase trainStatusUsecase;

  ScheduleBloc({
    required this.scheduleUsecase,
    required this.trainStatusUsecase,
  }) : super(ScheduleLoading()) {
    on<LoadSchedule>(_onLoadSchedule);
  }

  void _onLoadSchedule(LoadSchedule event, Emitter<ScheduleState> emit) async {
    final today = DateTime.now();
    final trainRequest = event.trainRequest;
    final isToday = dateFormatter.format(today) ==
        dateFormatter.format(trainRequest.rideDate);

    final results = await Future.wait([
      scheduleUsecase.call(params: trainRequest),
      if (isToday)
        trainStatusUsecase.call(
          params: TrainStatusRequest(
            rideDate: trainRequest.rideDate,
            station: trainRequest.departureStation,
          ),
        ),
    ]);

    final scheduleDataState = results[0] as DataState<List<TrainEntity>>;

    if (scheduleDataState.error != null) {
      emit(ScheduleLoaded(msg: scheduleDataState.error.toString()));
      return;
    }

    List<TrainStatusEntity> trainsStatus = [];
    if (results.length > 1) {
      final trainStatusDataState =
          results[1] as DataState<List<TrainStatusEntity>>;
      trainsStatus = trainStatusDataState.data ?? [];
    }

    emit(ScheduleLoaded(
      trains: scheduleDataState.data!,
      trainsStatus: trainsStatus,
    ));
  }
}
