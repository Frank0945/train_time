import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final dateFormatter = DateFormat('yyyy/MM/dd');
final timeFormatter = DateFormat('HH:mm');
final dateTimeFormatter = DateFormat('yyyy/MM/dd HH:mm');

TimeOfDay parseTimeOfDay(String time) {
  List<String> parts = time.split(":");
  int hour = int.parse(parts[0]);
  int minute = int.parse(parts[1]);
  return TimeOfDay(hour: hour, minute: minute);
}
