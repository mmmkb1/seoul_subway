import 'package:seoul_subway/data/dto/%08subway_dto.dart';
import 'package:seoul_subway/domain/model/subway.dart';

extension ToSubway on SubwayDto {
  Subway toSubway() {
    return Subway(
      totalCount: totalCount ?? 0,
      result: result?.toResult() ?? Result(code: '', message: ''),
      subwayId: subwayId ?? '',
      updnLine: updnLine ?? '',
      trainLineNm: trainLineNm ?? '',
      statnFid: statnFid ?? '',
      statnTid: statnTid ?? '',
      statnId: statnId ?? '',
      statnNm: statnNm ?? '',
      trnsitCo: trnsitCo ?? 0,
      ordkey: ordkey ?? '',
      subwayList: subwayList ?? '',
      statnList: statnList ?? '',
      btrainSttus: btrainSttus ?? '',
      barvlDt: barvlDt ?? 0,
      btrainNo: btrainNo ?? '',
      bstatnId: bstatnId ?? '',
      bstatnNm: bstatnNm ?? '',
      recptnDt: recptnDt ?? '',
      arvlMsg2: arvlMsg2 ?? '',
      arvlMsg3: arvlMsg3 ?? '',
      arvlCd: arvlCd ?? '',
      lstcarAt: lstcarAt ?? '',
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