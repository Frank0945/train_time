import 'package:dio/dio.dart';
import 'package:train_time/core/utils/formatters.dart';
import 'package:train_time/core/constants/constants.dart';
import 'package:train_time/features/schedule_view/data/models/train_details/dto/train_details_dto.dart';
import 'package:train_time/features/schedule_view/data/models/train_details/train_details_model.dart';
import 'package:html/parser.dart';

Future<TrainDetailsModel> fetchTrainDetails(TrainDetailsDTO dto) async {
  final dio = Dio();
  final response = await dio.get(
    Constants.queryByTrainNoUrl,
    queryParameters: {
      'rideDate': dateFormatter.format(dto.rideDate),
      'trainNo': dto.trainNo,
    },
  );

  if (response.statusCode != 200) {
    throw 'Failed to fetch trains status: ${response.statusMessage}';
  }

  return _webCrawler(response.data.toString());
}

TrainDetailsModel _webCrawler(String html) {
  try {
    final document = parse(html);
    final info = document.querySelector('.trip-info')!;
    final imgs = info.querySelectorAll('img');

    final tags = <String>[];
    for (final img in imgs) {
      tags.add(img.attributes['title']!);
    }

    String note = info.querySelector('.note')!.text;
    // Skip the note already in tags
    if (note == '每日行駛。') note = '';

    final itinerary = document.querySelector('.itinerary-controls.tdbg')!;
    final trs = itinerary.querySelectorAll('tr');

    final stations = <TrainDetailsStationModel>[];
    for (final tr in trs) {
      final tds = tr.querySelectorAll('td');
      if (tds.isEmpty) continue;

      final station = tds[0].text;
      final arrivalTime = tds[1].text;
      final departureTime = tds[2].text;

      stations.add(TrainDetailsStationModel(
        station: station,
        departureTime: departureTime,
        arrivalTime: arrivalTime,
      ));
    }

    return TrainDetailsModel(
      tags: tags,
      note: note,
      stations: stations,
    );
  } catch (e) {
    throw 'Failed to parse html: $e';
  }
}
