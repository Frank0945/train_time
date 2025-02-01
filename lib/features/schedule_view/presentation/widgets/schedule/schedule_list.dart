import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:train_time/features/schedule_view/domain/enums/schedule_filter_type.dart';
import 'package:train_time/features/schedule_view/domain/services/train_service.dart';
import 'package:train_time/features/schedule_view/presentation/blocs/schedule/schedule_bloc.dart';
import 'package:train_time/features/schedule_view/presentation/blocs/schedule/schedule_state.dart';
import 'package:train_time/features/schedule_view/presentation/widgets/schedule/center_info.dart';
import 'package:train_time/features/schedule_view/presentation/widgets/schedule/left_info.dart';
import 'package:train_time/features/schedule_view/presentation/widgets/schedule/right_info.dart';
import 'package:train_time/router.dart';
import 'package:train_time/shared/params/schedule_params.dart';
import 'package:train_time/shared/params/train_details_params.dart';

class ScheduleList extends StatelessWidget {
  final ScheduleParams params;
  final ScheduleFilterType filter;
  const ScheduleList({super.key, required this.params, required this.filter});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScheduleBloc, ScheduleState>(builder: (context, state) {
      if (state is ScheduleError) {
        return Center(child: Text(state.msg));
      }
      if (state is! ScheduleLoaded) {
        return Center(child: CircularProgressIndicator());
      }

      var trains = state.trains;

      if (filter != ScheduleFilterType.all) {
        final isLocal = filter == ScheduleFilterType.local;
        trains = state.trains
            .where(
              (train) => isLocal
                  ? TrainService.isLocalTrain(train.trainType)
                  : !TrainService.isLocalTrain(train.trainType),
            )
            .toList();
      }

      if (trains.isEmpty) {
        return Center(child: Text('無班次'));
      }

      return ListView.builder(
        itemCount: trains.length,
        itemBuilder: (context, index) {
          final train = trains[index];
          return Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
                minVerticalPadding: 10,
                onTap: () => context.push(
                  Routes.trainDetailsView.path,
                  extra: TrainDetailsParams(
                    rideDate: params.date,
                    trainNo: train.trainNo,
                    trainType: train.trainType,
                    departureStation: params.departureStationName,
                    arrivalStation: params.arrivalStationName,
                  ),
                ),
                title: SizedBox(
                  height: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LeftInfo(train: train),
                      CenterInfo(
                          train: train, trainsStatus: state.trainsStatus),
                      RightInfo(
                        train: train,
                        params: params,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 0,
              ),
            ],
          );
        },
      );
    });
  }
}
