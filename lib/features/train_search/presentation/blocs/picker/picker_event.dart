import 'package:train_time/features/train_search/domain/enums/station_type.dart';

abstract class PickerEvent {}

class LoadStationData extends PickerEvent {}

class UpdatePicker extends PickerEvent {
  final StationType stationType;

  UpdatePicker(this.stationType);
}

class ChangeBelong extends PickerEvent {
  final String belongId;

  ChangeBelong(this.belongId);
}
