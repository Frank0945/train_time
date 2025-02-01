import 'package:dio/dio.dart';
import 'package:train_time/core/utils/formatters.dart';
import 'package:train_time/core/constants/constants.dart';
import 'package:train_time/features/schedule_view/data/models/train_status/dto/train_status_dto.dart';
import 'package:train_time/features/schedule_view/data/models/train_status/train_status_model.dart';
import 'package:html/parser.dart';

Future<List<TrainStatusModel>> fetchTrainsStatus(TrainStatusDTO dto) async {
  final dio = Dio();
  final response = await dio.get(
    Constants.queryByStationBlankUrl,
    queryParameters: {
      'rideDate': dateFormatter.format(dto.rideDate),
      'station': '${dto.station.$1}-${dto.station.$2}',
    },
  );

  if (response.statusCode != 200) {
    throw 'Failed to fetch trains status: ${response.statusMessage}';
  }

  return _webCrawler(response.data.toString());
}

List<TrainStatusModel> _webCrawler(String html) {
  final trains = <TrainStatusModel>[];

  try {
    final document = parse(html);
    final elements = document.querySelectorAll('tr');

    for (final element in elements) {
      final tds = element.querySelectorAll('td');
      if (tds.length < 6) continue;

      final trainNo =
          tds[1].querySelector("a")!.attributes['href']!.split("trainNo=").last;
      final status = tds[5].text.replaceAll('誤點 ', '晚');

      trains.add(TrainStatusModel(
        trainNo: trainNo,
        status: status,
      ));
    }
  } catch (e) {
    throw 'Failed to parse html: $e';
  }

  return trains;
}
