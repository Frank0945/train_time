import 'package:android_id/android_id.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:train_time/core/constants/constants.dart';

Future<void> recordQuerySchedule(
    String departureStation, String arrivalStation) async {
  try {
    final data = FormData.fromMap({
      'entry.2028887968': await _fetchDeviceId(),
      'entry.1958954584': departureStation,
      'entry.1734240320': arrivalStation,
    });

    await Dio().post(
      Constants.recordQueryScheduleUrl,
      data: data,
    );
  } catch (e) {
    // ignore error
    debugPrint('Failed to record query schedule: $e');
  }
}

Future<String> _fetchDeviceId() async {
  const androidIdPlugin = AndroidId();
  return await androidIdPlugin.getId() ?? 'null';
}
