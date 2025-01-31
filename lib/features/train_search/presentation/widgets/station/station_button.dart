import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_time/features/train_search/domain/enums/station_type.dart';
import 'package:train_time/features/train_search/presentation/blocs/picker/picker_bloc.dart';
import 'package:train_time/features/train_search/presentation/blocs/picker/picker_event.dart'
    as picker;
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_bloc.dart';
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_event.dart';
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_state.dart';
import 'package:train_time/features/train_search/presentation/widgets/station/station_modal.dart';

class StationButton extends StatelessWidget {
  final StationType stationType;

  const StationButton({
    super.key,
    required this.stationType,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedBloc, SelectedState>(
      builder: (selectedCtx, state) {
        if (state is ShowSelected) {
          return FilledButton.tonal(
            onPressed: () {
              context.read<PickerBloc>().add(picker.UpdatePicker(stationType));

              showModalBottomSheet(
                context: context,
                builder: (_) => BlocProvider.value(
                  value: context.read<PickerBloc>(),
                  child: StationModal(
                    stationType: stationType,
                    onApply: (belongId, stationId) {
                      if (belongId == null || stationId == null) return;
                      selectedCtx.read<SelectedBloc>().add(
                            ApplyStation(
                              stationType: stationType,
                              belongId: belongId,
                              stationId: stationId,
                            ),
                          );
                    },
                  ),
                ),
              );
            },
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.surfaceBright,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 22, horizontal: 5),
              child: Column(
                children: [
                  AutoSizeText(
                    stationType == StationType.departure
                        ? state.departureStation.station
                        : state.arrivalStation.station,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    stationType == StationType.departure ? "起站" : "迄站",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ],
              ),
            ),
          );
        }
        return SizedBox();
      },
    );
  }
}
