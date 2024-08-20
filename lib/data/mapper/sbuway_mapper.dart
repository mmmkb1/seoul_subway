
import 'package:seoul_subway/data/dto/%08subway_dto.dart';
import 'package:seoul_subway/domain/model/subway.dart';

extension SubwayMapper on RealtimeArrivalList {
  Subway toSubway() {
    return Subway (
      trainLineNm: trainLineNm ?? '',
      barvlDt:  int.parse(barvlDt!) ?? 0,
      arvlMsg3: arvlMsg3 ?? '',
    );
  }
}