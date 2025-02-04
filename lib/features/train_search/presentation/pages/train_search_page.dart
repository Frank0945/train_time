import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_time/features/train_search/presentation/blocs/marker/marker_bloc.dart';
import 'package:train_time/features/train_search/presentation/blocs/picker/picker_bloc.dart';
import 'package:train_time/features/train_search/presentation/blocs/selected/selected_bloc.dart';
import 'package:train_time/features/train_search/presentation/widgets/action_list/action_list.dart';
import 'package:train_time/features/train_search/presentation/widgets/major_update_info.dart';
import 'package:train_time/features/train_search/presentation/widgets/marked_list.dart';
import 'package:train_time/features/train_search/presentation/widgets/search.dart';
import 'package:train_time/features/train_search/presentation/widgets/date_time_picker.dart';
import 'package:train_time/features/train_search/presentation/widgets/station/station.dart';
import 'package:train_time/injection_container.dart';

class TrainSearchPage extends StatelessWidget {
  const TrainSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surfaceContainer,
        surfaceTintColor: Theme.of(context).colorScheme.surfaceContainer,
        title: Text("台鐵一點通"),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<PickerBloc>(create: (_) => sl()),
          BlocProvider<SelectedBloc>(create: (_) => sl()),
          BlocProvider<MarkerBloc>(create: (_) => sl()),
        ],
        child: Column(
          children: [
            _searchSection(context),
            Expanded(
              child: ListView(
                children: [
                  MajorUpdateInfo(prefs: sl()),
                  MarkedList(),
                  ActionList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _searchSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      color: Theme.of(context).colorScheme.surfaceContainer,
      child: Column(
        children: [
          Station(),
          SizedBox(height: 16),
          DateTimePicker(),
          SizedBox(height: 16),
          Search(),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
