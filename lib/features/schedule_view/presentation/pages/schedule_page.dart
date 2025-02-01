import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_time/core/utils/formatters.dart';
import 'package:train_time/features/schedule_view/domain/entities/train/train_request.dart';
import 'package:train_time/features/schedule_view/domain/enums/schedule_filter_type.dart';
import 'package:train_time/features/schedule_view/presentation/blocs/schedule/schedule_bloc.dart';
import 'package:train_time/features/schedule_view/presentation/blocs/schedule/schedule_event.dart';
import 'package:train_time/features/schedule_view/presentation/widgets/schedule/schedule_list.dart';
import 'package:train_time/injection_container.dart';
import 'package:train_time/shared/params/schedule_params.dart';

class SchedulePage extends StatelessWidget {
  final ScheduleParams params;

  const SchedulePage({
    super.key,
    required this.params,
  });

  @override
  Widget build(BuildContext context) {
    final trainRequest = TrainRequest(
      departureStation: (
        params.departureStationId,
        params.departureStationName,
      ),
      arrivalStation: (
        params.arrivalStationId,
        params.arrivalStationName,
      ),
      rideDate: params.date,
      startTime: params.time,
    );

    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    params.departureStationName,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(Icons.arrow_right_alt_rounded),
                  ),
                  Text(
                    params.arrivalStationName,
                  ),
                ],
              ),
              SizedBox(height: 3),
              Text(
                '${dateFormatter.format(params.date)}  ${params.time.format(context)} 出發',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
              ),
            ],
          ),
          toolbarHeight: 70,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: '所有列車'),
              Tab(text: '區間車'),
              Tab(text: '對號列車'),
            ],
          ),
        ),
        body: MultiBlocProvider(
          providers: [
            // page will be repeatedly opened/closed, so let `flutter_bloc` manage the lifecycle instead of `get_it`
            BlocProvider(
              create: (_) =>
                  ScheduleBloc(scheduleUsecase: sl(), trainStatusUsecase: sl())
                    ..add(LoadSchedule(trainRequest: trainRequest)),
            ),
          ],
          child: TabBarView(
            children: <Widget>[
              ScheduleList(params: params, filter: ScheduleFilterType.all),
              ScheduleList(params: params, filter: ScheduleFilterType.local),
              ScheduleList(params: params, filter: ScheduleFilterType.numbered),
            ],
          ),
        ),
      ),
    );
  }
}
