import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:seoul_subway/data/dto/%08subway_dto.dart';
class SubwayApi {
  final _baseUrl ="http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/";

  Future<List<RealtimeArrivalList>> getSubwayReults(String query) async {
    final response = await http.get(Uri.parse('$_baseUrl$query'));
    final subwayList = jsonDecode(response.body)['realtimeArrivalList'] as List;
    return subwayList.map((e) => RealtimeArrivalList.fromJson(e)).toList();
  }
}