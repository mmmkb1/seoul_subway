import 'package:seoul_subway/data/dto/%08subway_dto.dart';
import 'package:seoul_subway/domain/model/subway.dart';

extension ToSubway on SubwayDto {
  Subway toSubway() {
    return Subway(
      trainLineNm: trainLineNm ?? '',
      barvlDt: barvlDt ?? 0,
      arvlMsg3: arvlMsg3 ?? '',
    );
  }
}

extension ToResult on ResultDto {
  Result toResult() {
    return Result(
      code: code ?? '',
      message: message ?? '',
    );
  }
}
