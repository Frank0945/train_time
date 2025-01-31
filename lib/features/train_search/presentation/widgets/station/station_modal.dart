import 'package:flutter/material.dart';
import 'package:train_time/features/train_search/domain/enums/station_type.dart';
import 'package:train_time/features/train_search/presentation/widgets/station/station_picker.dart';

class StationModal extends StatelessWidget {
  final Function(String? belongId, String? stationId) onApply;
  final StationType stationType;
  const StationModal({
    super.key,
    required this.onApply,
    required this.stationType,
  });

  @override
  Widget build(BuildContext context) {
    String? belongId;
    String? stationId;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  stationType == StationType.departure ? "選擇出發站" : "選擇抵達站",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  "取消",
                ),
              ),
              SizedBox(
                width: 8,
              ),
              FilledButton(
                onPressed: () {
                  onApply(belongId, stationId);
                  Navigator.pop(context);
                },
                child: Text(
                  "確定",
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: StationPicker(
            onChange: (bId, sId) {
              belongId = bId;
              stationId = sId;
            },
          ),
        ),
      ],
    );
  }
}
