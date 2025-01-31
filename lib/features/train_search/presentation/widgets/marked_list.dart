import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_time/features/train_search/domain/enums/station_type.dart';
import 'package:train_time/features/train_search/presentation/blocs/marker/marker_bloc.dart';
import 'package:train_time/features/train_search/presentation/blocs/marker/marker_event.dart';
import 'package:train_time/features/train_search/presentation/blocs/marker/marker_state.dart';
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_bloc.dart';
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_event.dart';

class MarkedList extends StatelessWidget {
  const MarkedList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarkerBloc, MarkerState>(
      builder: (context, state) {
        return Column(
          children: [
            ExpansionTile(
              title: Text('收藏路線'),
              subtitle: Text(
                '點擊查看收藏的路線',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
              tilePadding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
              leading: Icon(
                Icons.bookmark_rounded,
                color: Theme.of(context).colorScheme.secondary,
                size: 28,
              ),
              collapsedShape: RoundedRectangleBorder(
                side: BorderSide.none,
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide.none,
              ),
              children: state.markedStationNames.isEmpty
                  ? [
                      ListTile(
                        title: Text(
                          '尚未收藏任何路線',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurfaceVariant,
                                  ),
                        ),
                      ),
                    ]
                  : _buildMarkedStations(context, state),
            ),
          ],
        );
      },
    );
  }

  List<Widget> _buildMarkedStations(BuildContext context, MarkerState state) {
    return state.markedStationNames.asMap().entries.map((entry) {
      final index = entry.key;
      final stations = entry.value;

      return ListTile(
        onTap: () {
          context.read<SelectedBloc>().add(
                ApplyStation(
                  stationType: StationType.departure,
                  stationName: stations.$1,
                ),
              );
          context.read<SelectedBloc>().add(
                ApplyStation(
                  stationType: StationType.arrival,
                  stationName: stations.$2,
                ),
              );
        },
        tileColor: Theme.of(context).colorScheme.surfaceContainerHigh,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3),
          child: Icon(
            Icons.place_rounded,
            size: 22,
          ),
        ),
        minVerticalPadding: 0,
        contentPadding: EdgeInsets.only(left: 16, right: 8),
        title: Row(children: [
          Text(
            stations.$1,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(
              Icons.arrow_right_alt_rounded,
              size: 18,
            ),
          ),
          Text(stations.$2),
          Spacer(),
          PopupMenuButton(itemBuilder: (_) {
            return [
              PopupMenuItem(
                child: Text('刪除'),
                onTap: () {
                  context.read<MarkerBloc>().add(UnmarkStationByIndex(index));
                },
              ),
            ];
          }),
        ]),
      );
    }).toList();
  }
}
