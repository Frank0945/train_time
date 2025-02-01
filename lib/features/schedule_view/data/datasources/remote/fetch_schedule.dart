import 'package:dio/dio.dart';
import 'package:html/parser.dart';
import 'package:train_time/core/constants/constants.dart';
import 'package:train_time/core/utils/formatters.dart';
import 'package:train_time/features/schedule_view/data/models/train/train_model.dart';
import 'package:train_time/features/schedule_view/data/models/train/dto/train_dto.dart';

Future<List<TrainModel>> fetchSchedule(TrainDTO dto) async {
  final time = DateTime(
    dto.rideDate.year,
    dto.rideDate.month,
    dto.rideDate.day,
    dto.startTime.hour,
    dto.startTime.minute,
  );

  final startStation = '${dto.departureStation.$1}-${dto.departureStation.$2}';
  final endStation = '${dto.arrivalStation.$1}-${dto.arrivalStation.$2}';

  final data = FormData.fromMap({
    'startStation': startStation,
    'endStation': endStation,
    'transfer': 'ONE',
    'rideDate': dateFormatter.format(time),
    'startOrEndTime': 'true',
    'startTime': timeFormatter.format(time),
    'endTime': '23:59',
    'trainTypeList': 'ALL',
    'queryClassification': 'NORMAL',
    'query': '查詢'
  });

  final dio = Dio();
  final response = await dio.request(
    Constants.queryByTimeUrl,
    options: Options(
      method: 'POST',
    ),
    data: data,
  );

  if (response.statusCode != 200) {
    throw 'Failed to fetch schedule: ${response.statusMessage}';
  }

  return _webCrawler(response.data.toString());
}

List<TrainModel> _webCrawler(String html) {
  final trains = <TrainModel>[];

  try {
    final document = parse(html);
    final elements = document.querySelectorAll('tr.trip-column');

    for (final element in elements) {
      final trainInfo = element.querySelector('td a')!.text.split(" ");
      final trainType = trainInfo[0];
      final trainNo = trainInfo[1];

      final locations = element.querySelectorAll('td span.location');
      final startLocation = locations[0].text;
      final endLocation = locations[1].text;

      final tds = element.querySelectorAll('td');
      final startTime = tds[1].text;
      final endTime = tds[2].text;
      final duration = tds[3].text;
      final via = tds[4].text.replaceAll("-", "");
      final price = tds[6].querySelector('span')!.text.replaceAll(" ", "");

      final form = tds[9].querySelector('form');

      final isBookable = form != null;

      String trainTypeCode = "";
      if (form != null) {
        final inputs = form.querySelectorAll('input');
        for (final input in inputs) {
          if (input.attributes['name'] == 'transferList[0].trainType.code') {
            trainTypeCode = input.attributes['value'] ?? "";
            break;
          }
        }
      }

      trains.add(TrainModel(
        trainType: trainType,
        trainNo: trainNo,
        startStation: startLocation,
        endStation: endLocation,
        startTime: startTime,
        endTime: endTime,
        duration: duration,
        via: via,
        price: price,
        trainTypeCode: trainTypeCode,
        isBookable: isBookable,
      ));
    }
  } catch (e) {
    throw 'Failed to parse schedule: $e';
  }

  if (trains.isEmpty) {
    throw "查無資料";
  }

  return trains;
}
