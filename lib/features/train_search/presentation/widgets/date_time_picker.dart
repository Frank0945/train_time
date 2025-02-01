import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_time/core/utils/formatters.dart';
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_bloc.dart';
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_event.dart';
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_state.dart';

final _today = DateTime.now();
final _lastDate = _today.add(Duration(days: 60));

class DateTimePicker extends StatelessWidget {
  const DateTimePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedBloc, SelectedState>(
      builder: (context, state) {
        if (state is ShowSelected) {
          return Row(
            children: [
              Expanded(
                child: FilledButton.tonal(
                  onPressed: () async {
                    final changed = await showDatePicker(
                      context: context,
                      initialDate: state.date,
                      firstDate: _today,
                      lastDate: _lastDate,
                    );
                    if (changed != null && context.mounted) {
                      context
                          .read<SelectedBloc>()
                          .add(UpdateSelectedDateTime(date: changed));
                    }
                  },
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    backgroundColor:
                        Theme.of(context).colorScheme.surfaceBright,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.date_range_rounded,
                          color: Theme.of(context).colorScheme.secondary,
                          size: 16,
                        ),
                        SizedBox(width: 6),
                        Text(
                          dateFormatter.format(state.date),
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Expanded(
                child: FilledButton.tonal(
                  onPressed: () async {
                    final changed = await showTimePicker(
                      context: context,
                      initialTime: state.time,
                    );
                    if (changed != null && context.mounted) {
                      context
                          .read<SelectedBloc>()
                          .add(UpdateSelectedDateTime(time: changed));
                    }
                  },
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    backgroundColor:
                        Theme.of(context).colorScheme.surfaceBright,
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_time_rounded,
                          color: Theme.of(context).colorScheme.secondary,
                          size: 16,
                        ),
                        SizedBox(width: 6),
                        Text(
                          '${state.time.hour}:${state.time.minute} 出發',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ]),
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
