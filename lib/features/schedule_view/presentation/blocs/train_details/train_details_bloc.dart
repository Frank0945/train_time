import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_time/features/schedule_view/domain/usecases/train_details_usecase.dart';
import 'package:train_time/features/schedule_view/presentation/blocs/train_details/train_details_event.dart';
import 'package:train_time/features/schedule_view/presentation/blocs/train_details/train_details_state.dart';

class TrainDetailsBloc extends Bloc<TrainDetailsEvent, TrainDetailsState> {
  final TrainDetailsUsecase trainDetailsUsecase;

  TrainDetailsBloc({
    required this.trainDetailsUsecase,
  }) : super(TrainDetailsLoading()) {
    on<LoadTrainDetails>(_onLoadTrainDetails);
  }

  void _onLoadTrainDetails(
      LoadTrainDetails event, Emitter<TrainDetailsState> emit) async {
    final results =
        await trainDetailsUsecase.call(params: event.trainDetailsRequest);

    if (results.error != null) {
      emit(TrainDetailsError(msg: results.error.toString()));
      return;
    }

    emit(TrainDetailsLoaded(
      trainDetails: results.data!,
    ));
  }
}
