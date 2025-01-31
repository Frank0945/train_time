import 'package:flutter/material.dart';
import 'package:train_time/core/constants/constants.dart';
import 'package:train_time/core/utils/formatters.dart';
import 'package:train_time/features/schedule_view/domain/entities/train/train_entity.dart';
import 'package:train_time/shared/params/schedule_params.dart';
import 'package:url_launcher/url_launcher.dart';

class RightInfo extends StatelessWidget {
  final TrainEntity train;
  final ScheduleParams params;

  const RightInfo({
    super.key,
    required this.train,
    required this.params,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'NT${train.price}',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
          ),
          Spacer(),
          if (train.isBookable)
            FilledButton.tonal(
              onPressed: () async {
                final time = DateTime(
                  params.date.year,
                  params.date.month,
                  params.date.day,
                  params.time.hour,
                  params.time.minute,
                );

                final url = Uri(
                  scheme: Constants.buyTicketScheme,
                  host: Constants.buyTicketHost,
                  path: Constants.buyTicketPath,
                  queryParameters: {
                    'dateTime': dateTimeFormatter.format(time),
                    'startStationId': params.departureStationId,
                    'endStationId': params.arrivalStationId,
                    'trainTypeCode': train.trainTypeCode,
                    'trainNo': train.trainNo,
                  },
                );

                await launchUrl(url);
              },
              style: FilledButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              ),
              child: Text('訂票'),
            ),
          Spacer(),
        ],
      ),
    );
  }
}
