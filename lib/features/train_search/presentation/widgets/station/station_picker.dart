import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_time/features/train_search/presentation/blocs/picker/picker_bloc.dart';
import 'package:train_time/features/train_search/presentation/blocs/picker/picker_event.dart';
import 'package:train_time/features/train_search/presentation/blocs/picker/picker_state.dart';

final _textStyle = TextStyle(
  fontSize: 18,
  height: 1.8,
);

class StationPicker extends StatelessWidget {
  final Function(String belongId, String stationId) onChange;
  const StationPicker({super.key, required this.onChange});

  @override
  Widget build(BuildContext context) {
    String? belongId;
    return BlocBuilder<PickerBloc, PickerState>(
      builder: (_, state) {
        if (state is PickerLoaded) {
          final stationBloc = context.read<PickerBloc>();
          final stationController = FixedExtentScrollController(
            initialItem: state.stationIdx,
          );

          return Row(
            children: [
              Expanded(
                child: CupertinoPicker(
                  scrollController: FixedExtentScrollController(
                    initialItem: state.belongIdx,
                  ),
                  itemExtent: 40,
                  looping: false,
                  offAxisFraction: 0.1,
                  magnification: 1.22,
                  useMagnifier: true,
                  squeeze: 1.2,
                  selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                    background:
                        Theme.of(context).colorScheme.primary.withAlpha(20),
                    capEndEdge: false,
                  ),
                  onSelectedItemChanged: (i) {
                    belongId = state.all[i].belongId;
                    stationBloc.add(ChangeBelong(belongId!));
                    stationController.jumpToItem(0);
                    onChange(
                      belongId!,
                      state.all[i].stations.first.stationId,
                    );
                  },
                  children: state.all
                      .map(
                        (e) => Text(
                          e.belong,
                          style: _textStyle,
                        ),
                      )
                      .toList(),
                ),
              ),
              Expanded(
                child: CupertinoPicker(
                  scrollController: stationController,
                  itemExtent: 40,
                  looping: false,
                  offAxisFraction: -0.1,
                  magnification: 1.22,
                  useMagnifier: true,
                  squeeze: 1.2,
                  onSelectedItemChanged: (i) {
                    onChange(
                      belongId ?? state.all[state.belongIdx].belongId,
                      state.selectedStations[i].stationId,
                    );
                  },
                  selectionOverlay: CupertinoPickerDefaultSelectionOverlay(
                    background:
                        Theme.of(context).colorScheme.primary.withAlpha(20),
                    capStartEdge: false,
                  ),
                  children: state.selectedStations
                      .map(
                        (e) => Text(
                          e.station,
                          style: _textStyle,
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          );
        }
        return SizedBox();
      },
    );
  }
}
