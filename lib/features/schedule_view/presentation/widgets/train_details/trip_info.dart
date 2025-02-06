import 'package:flutter/material.dart';
import 'package:train_time/features/schedule_view/domain/services/train_service.dart';

final wrapMargin = EdgeInsets.only(right: 6, bottom: 8);
final wrapPadding = EdgeInsets.symmetric(horizontal: 8, vertical: 3);

class TripInfo extends StatelessWidget {
  final String status;
  final List<String> tags;
  final String note;
  const TripInfo({
    super.key,
    required this.status,
    required this.tags,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    final isOnTime = TrainService.isOnTime(status);

    return Container(
      color: Theme.of(context).colorScheme.surfaceContainer,
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            children: [
              if (status.isNotEmpty)
                Container(
                  decoration: BoxDecoration(
                    color: isOnTime
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).colorScheme.error,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: wrapMargin,
                  padding: wrapPadding,
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
              ...tags.map((tag) {
                return Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: wrapMargin,
                  padding: wrapPadding,
                  child: Text(
                    tag,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                        ),
                  ),
                );
              }),
            ],
          ),
          if (note.isNotEmpty) ...[
            SizedBox(height: 3),
            Text(
              note,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
          ],
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
