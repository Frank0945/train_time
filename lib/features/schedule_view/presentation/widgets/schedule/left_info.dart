import 'package:flutter/material.dart';
import 'package:train_time/features/schedule_view/domain/entities/train/train_entity.dart';
import 'package:train_time/features/schedule_view/domain/services/train_service.dart';

class LeftInfo extends StatelessWidget {
  final TrainEntity train;
  const LeftInfo({super.key, required this.train});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              if (!TrainService.isLocalTrain(train.trainType))
                Positioned(
                  top: 0.5,
                  left: -8,
                  child: Container(
                    height: 38,
                    width: 2,
                    margin: EdgeInsets.only(right: 3),
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  train.trainType,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: TrainService.isLocalTrain(train.trainType)
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.tertiary,
                      ),
                ),
              ),
            ],
          ),
          SizedBox(height: 3),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              "${train.trainNo} ${train.via}",
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
          ),
          Spacer(),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Row(
              children: [
                Text(
                  train.startStation,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
                Icon(
                  Icons.arrow_right_alt_rounded,
                  size: 15,
                ),
                Text(
                  train.endStation,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
