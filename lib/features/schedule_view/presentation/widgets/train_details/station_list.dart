import 'package:flutter/material.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_details/train_details_entity.dart';

class StationList extends StatelessWidget {
  final List<TrainDetailsStationEntity> stations;
  final String departureStation;
  final String arrivalStation;
  const StationList({
    super.key,
    required this.stations,
    required this.departureStation,
    required this.arrivalStation,
  });

  @override
  Widget build(BuildContext context) {
    final departureStationIdx =
        stations.indexWhere((station) => station.station == departureStation);
    final arrivalStationIdx =
        stations.indexWhere((station) => station.station == arrivalStation);

    bool isDepartureStation(int index) => index == departureStationIdx;
    bool isArrivalStation(int index) => index == arrivalStationIdx;
    bool isPassingBy(int index) =>
        index > departureStationIdx && index < arrivalStationIdx;

    final now = DateTime.now();

    final leavingStationIdx = stations.indexWhere(
      (station) => DateTime.now()
          .copyWith(
            hour: int.parse(station.departureTime.split(':')[0]),
            minute: int.parse(station.departureTime.split(':')[1]),
          )
          .isAfter(now),
    );

    return Column(
      children: [
        ListTile(
          minTileHeight: 0,
          title: Row(
            children: [
              SizedBox(width: 30),
              Expanded(
                child: Text(
                  '停靠站',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Expanded(
                child: Text(
                  '到站',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Expanded(
                child: Text(
                  '離站',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: stations.length,
            itemBuilder: (context, index) {
              final station = stations[index];

              final textColor = index < leavingStationIdx
                  ? Theme.of(context)
                      .colorScheme
                      .onSurfaceVariant
                      .withAlpha(100)
                  : Theme.of(context).colorScheme.onSurface;

              return ListTile(
                minTileHeight: 0,
                title: Row(
                  children: [
                    SizedBox(
                      width: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if (isDepartureStation(index))
                            Icon(
                              Icons.radio_button_checked_rounded,
                              size: 18,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          else if (isArrivalStation(index))
                            Icon(
                              Icons.location_on_rounded,
                              size: 18,
                              color: Theme.of(context).colorScheme.primary,
                            )
                          else if (isPassingBy(index))
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: Theme.of(context).colorScheme.primary,
                            )
                        ],
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        station.station,
                        style: TextStyle(
                          color: textColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        station.arrivalTime,
                        style: TextStyle(
                          color: textColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        station.departureTime,
                        style: TextStyle(
                          color: textColor,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
