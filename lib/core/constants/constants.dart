import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static const String baseUrl = "https://www.railway.gov.tw";

  static const String queryByTimeUrl =
      "$baseUrl/tra-tip-web/tip/tip001/tip112/querybytime";
  static const String queryByStationBlankUrl =
      "$baseUrl/tra-tip-web/tip/tip001/tip112/querybystationblank";
  static const String queryByTrainNoUrl =
      "$baseUrl/tra-tip-web/tip/tip001/tip112/querybytrainno";

  static final String recordQueryScheduleUrl =
      dotenv.get("RECORD_QUERY_SCHEDULE_URL");

  static const String buyTicketScheme = "https";
  static const String buyTicketHost = "frank0945.github.io";
  static const String buyTicketPath = "tra-ticket-booking-redirector";
}
