import 'package:flutter/material.dart';
import 'package:train_time/features/schedule_view/domain/entities/train/train_entity.dart';
import 'package:train_time/features/schedule_view/domain/entities/train_status/train_status_entity.dart';
import 'package:train_time/features/schedule_view/domain/services/train_service.dart';

class CenterInfo extends StatelessWidget {
  final TrainEntity train;
  final List<TrainStatusEntity> trainsStatus;
  const CenterInfo(
      {super.key, required this.train, required this.trainsStatus});

  @override
  Widget build(BuildContext context) {
    final status = TrainService.getTrainStatus(trainsStatus, train.trainNo);
    final isOnTime = TrainService.isOnTime(status);

    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: status.isEmpty ? 0 : 1,
            child: Container(
              decoration: BoxDecoration(
                color: isOnTime
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).colorScheme.error,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 2,
              ),
              child: Text(
                status,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: isOnTime
                          ? Theme.of(context).colorScheme.onSecondary
                          : Theme.of(context).colorScheme.onError,
                      letterSpacing: 2,
                    ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                train.startTime,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(
                  Icons.forward_rounded,
                  size: 25,
                ),
              ),
              Text(
                train.endTime,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Text(
              train.duration,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
