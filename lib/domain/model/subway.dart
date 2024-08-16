  import 'package:freezed_annotation/freezed_annotation.dart';

  part 'subway.freezed.dart';
  part 'subway.g.dart';

  @freezed
  class Subway with _$Subway {
    factory Subway({
      required int totalCount,
      required Result result,
      required String subwayId,
      required String updnLine,
      required String trainLineNm,
      required String statnFid,
      required String statnTid,
      required String statnId,
      required String statnNm,
      required int trnsitCo,
      required String ordkey,
      required String subwayList,
      required String statnList,
      required String btrainSttus,
      required int barvlDt,
      required String btrainNo,
      required String bstatnId,
      required String bstatnNm,
      required String recptnDt,
      required String arvlMsg2,
      required String arvlMsg3,
      required String arvlCd,
      required String lstcarAt,
    }) = _Subway;

    factory Subway.fromJson(Map<String, dynamic> json) => _$SubwayFromJson(json);
  }

  @freezed
  class Result with _$Result {
    factory Result({
      required String code,
      required String message,
    }) = _Result;

    factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
  }