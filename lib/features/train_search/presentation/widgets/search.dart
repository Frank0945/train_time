import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:train_time/features/train_search/presentation/blocs/marker/marker_bloc.dart';
import 'package:train_time/features/train_search/presentation/blocs/marker/marker_event.dart';
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_bloc.dart';
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_state.dart';
import 'package:train_time/router.dart';
import 'package:train_time/shared/params/schedule_params.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedBloc, SelectedState>(
      builder: (context, selectedState) {
        if (selectedState is! ShowSelected) return const SizedBox();

        final isMarked = context.select<MarkerBloc, bool>(
          (markerBloc) => markerBloc.state.containsMarkedStation(
            selectedState.departureStation.station,
            selectedState.arrivalStation.station,
          ),
        );
        final departureStationId = selectedState.departureStation.stationId;
        final departureStationName = selectedState.departureStation.station;
        final arrivalStationId = selectedState.arrivalStation.stationId;
        final arrivalStationName = selectedState.arrivalStation.station;

        return Row(
          children: [
            Spacer(),
            IconButton.filledTonal(
              onPressed: () {
                final event = isMarked
                    ? UnmarkStationByNames(
                        departureStationId: departureStationId,
                        arrivalStationId: arrivalStationId,
                      )
                    : MarkStation(
                        departureStationId: departureStationId,
                        arrivalStationId: arrivalStationId,
                      );
                context.read<MarkerBloc>().add(event);
              },
              icon: Icon(
                isMarked
                    ? Icons.bookmark_remove_rounded
                    : Icons.bookmark_add_outlined,
                size: 20,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: FilledButton.icon(
                onPressed: () {
                  context.push(
                    Routes.scheduleView.path,
                    extra: ScheduleParams(
                      departureStationId: departureStationId,
                      arrivalStationId: arrivalStationId,
                      departureStationName: departureStationName,
                      arrivalStationName: arrivalStationName,
                      date: selectedState.date,
                      time: selectedState.time,
                    ),
                  );
                },
                style: FilledButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                label: Text(
                  "查詢",
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                  strutStyle: StrutStyle(
                    fontSize: 16,
                    leading: 1,
                  ),
                ),
                icon: Icon(
                  Icons.search,
                  size: 20,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
