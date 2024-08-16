import 'package:freezed_annotation/freezed_annotation.dart';

part 'subway.freezed.dart';
part 'subway.g.dart';

@freezed
class Subway with _$Subway {
  factory Subway({
    required String trainLineNm,
    required int barvlDt,
    required String arvlMsg3,
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
