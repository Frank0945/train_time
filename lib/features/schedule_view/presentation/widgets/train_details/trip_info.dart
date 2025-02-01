import 'package:flutter/material.dart';

class TripInfo extends StatelessWidget {
  final List<String> tags;
  final String note;
  const TripInfo({super.key, required this.tags, required this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surfaceContainer,
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            children: tags.map((tag) {
              return Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.only(right: 6, bottom: 8),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                child: Text(
                  tag,
                  style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color:
                            Theme.of(context).colorScheme.onSecondaryContainer,
                      ),
                ),
              );
            }).toList(),
          ),
          if (note.isNotEmpty) ...[
            SizedBox(height: 3),
            Text(
              note,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
            SizedBox(height: 10),
          ],
        ],
      ),
    );
  }
}
