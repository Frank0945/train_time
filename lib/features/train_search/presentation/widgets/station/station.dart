import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_time/features/train_search/domain/enums/station_type.dart';
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_bloc.dart';
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_event.dart';
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_state.dart';
import 'package:train_time/features/train_search/presentation/widgets/station/station_button.dart';

class Station extends StatelessWidget {
  const Station({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedBloc, SelectedState>(
      builder: (selectedCtx, state) {
        return Row(
          children: [
            Expanded(
              child: StationButton(
                stationType: StationType.departure,
              ),
            ),
            IconButton(
              onPressed: () {
                selectedCtx.read<SelectedBloc>().add(SwapStation());
              },
              icon: Icon(
                Icons.swap_horiz,
                color: Theme.of(context).colorScheme.primary,
              ),
              iconSize: 35,
            ),
            Expanded(
              child: StationButton(
                stationType: StationType.arrival,
              ),
            ),
          ],
        );
      },
    );
  }
}
