import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_details/train_details_request.dart';
import 'package:train_time/features/schedule_view/presentation/blocs/train_details/train_details_bloc.dart';
import 'package:train_time/features/schedule_view/presentation/blocs/train_details/train_details_event.dart';
import 'package:train_time/features/schedule_view/presentation/blocs/train_details/train_details_state.dart';
import 'package:train_time/features/schedule_view/presentation/widgets/train_details/station_list.dart';
import 'package:train_time/features/schedule_view/presentation/widgets/train_details/trip_info.dart';
import 'package:train_time/injection_container.dart';
import 'package:train_time/shared/params/train_details_params.dart';

class TrainDetailsPage extends StatelessWidget {
  final TrainDetailsParams params;
  const TrainDetailsPage({
    super.key,
    required this.params,
  });

  @override
  Widget build(BuildContext context) {
    final trainDetailsRequest = TrainDetailsRequest(
      rideDate: params.rideDate,
      trainNo: params.trainNo,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${params.trainType} ${params.trainNo}',
        ),
        backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
        surfaceTintColor: Theme.of(context).colorScheme.surfaceContainer,
      ),
      body: MultiBlocProvider(
        providers: [
          // page will be repeatedly opened/closed, so let `flutter_bloc` manage the lifecycle instead of `get_it`
          BlocProvider(
            create: (_) => TrainDetailsBloc(trainDetailsUsecase: sl())
              ..add(LoadTrainDetails(trainDetailsRequest)),
          ),
        ],
        child: BlocBuilder<TrainDetailsBloc, TrainDetailsState>(
          builder: (context, state) {
            if (state is TrainDetailsError) {
              return Center(child: Text(state.msg));
            }
            if (state is! TrainDetailsLoaded) {
              return Center(child: CircularProgressIndicator());
            }

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TripInfo(
                  status: state.trainDetails.status,
                  tags: state.trainDetails.tags,
                  note: state.trainDetails.note,
                ),
                Expanded(
                  child: StationList(
                    stations: state.trainDetails.stations,
                    departureStation: params.departureStation,
                    arrivalStation: params.arrivalStation,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
