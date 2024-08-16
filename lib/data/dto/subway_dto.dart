/*import 'package:seoul_subway/domain/model/subway.dart';
class SubwayDto {
  int? totalCount;
  Result? result;
  String? subwayId;
  String? updnLine;
  String? trainLineNm;
  String? statnFid;
  String? statnTid;
  String? statnId;
  String? statnNm;
  int? trnsitCo;
  String? ordkey;
  String? subwayList;
  String? statnList;
  String? btrainSttus;
  int? barvlDt;
  String? btrainNo;
  String? bstatnId;
  String? bstatnNm;
  String? recptnDt;
  String? arvlMsg2;
  String? arvlMsg3;
  String? arvlCd;
  String? lstcarAt;

  SubwayDto({
    this.totalCount,
    this.result,
    this.subwayId,
    this.updnLine,
    this.trainLineNm,
    this.statnFid,
    this.statnTid,
    this.statnId,
    this.statnNm,
    this.trnsitCo,
    this.ordkey,
    this.subwayList,
    this.statnList,
    this.btrainSttus,
    this.barvlDt,
    this.btrainNo,
    this.bstatnId,
    this.bstatnNm,
    this.recptnDt,
    this.arvlMsg2,
    this.arvlMsg3,
    this.arvlCd,
    this.lstcarAt,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'totalCount': totalCount,
      'result': result?.toJson(),
      'subwayId': subwayId,
      'updnLine': updnLine,
      'trainLineNm': trainLineNm,
      'statnFid': statnFid,
      'statnTid': statnTid,
      'statnId': statnId,
      'statnNm': statnNm,
      'trnsitCo': trnsitCo,
      'ordkey': ordkey,
      'subwayList': subwayList,
      'statnList': statnList,
      'btrainSttus': btrainSttus,
      'barvlDt': barvlDt,
      'btrainNo': btrainNo,
      'bstatnId': bstatnId,
      'bstatnNm': bstatnNm,
      'recptnDt': recptnDt,
      'arvlMsg2': arvlMsg2,
      'arvlMsg3': arvlMsg3,
      'arvlCd': arvlCd,
      'lstcarAt': lstcarAt,
    };
  }

  factory SubwayDto.fromJson(Map<String, dynamic> json) {
    return SubwayDto(
      totalCount: json['totalCount'] as int?,
      result: json['result'] != null ? Result.fromJson(json['result'] as Map<String, dynamic>) : null,
      subwayId: json['subwayId'] as String?,
      updnLine: json['updnLine'] as String?,
      trainLineNm: json['trainLineNm'] as String?,
      statnFid: json['statnFid'] as String?,
      statnTid: json['statnTid'] as String?,
      statnId: json['statnId'] as String?,
      statnNm: json['statnNm'] as String?,
      trnsitCo: json['trnsitCo'] as int?,
      ordkey: json['ordkey'] as String?,
      subwayList: json['subwayList'] as String?,
      statnList: json['statnList'] as String?,
      btrainSttus: json['btrainSttus'] as String?,
      barvlDt: json['barvlDt'] as int?,
      btrainNo: json['btrainNo'] as String?,
      bstatnId: json['bstatnId'] as String?,
      bstatnNm: json['bstatnNm'] as String?,
      recptnDt: json['recptnDt'] as String?,
      arvlMsg2: json['arvlMsg2'] as String?,
      arvlMsg3: json['arvlMsg3'] as String?,
      arvlCd: json['arvlCd'] as String?,
      lstcarAt: json['lstcarAt'] as String?,
    );
  }
}
*/

class SubwayDto {
  int? totalCount;
  ResultDto? result;
  String? subwayId;
  String? updnLine;
  String? trainLineNm;
  String? statnFid;
  String? statnTid;
  String? statnId;
  String? statnNm;
  int? trnsitCo;
  String? ordkey;
  String? subwayList;
  String? statnList;
  String? btrainSttus;
  int? barvlDt;
  String? btrainNo;
  String? bstatnId;
  String? bstatnNm;
  String? recptnDt;
  String? arvlMsg2;
  String? arvlMsg3;
  String? arvlCd;
  String? lstcarAt;

  SubwayDto({
    this.totalCount,
    this.result,
    this.subwayId,
    this.updnLine,
    this.trainLineNm,
    this.statnFid,
    this.statnTid,
    this.statnId,
    this.statnNm,
    this.trnsitCo,
    this.ordkey,
    this.subwayList,
    this.statnList,
    this.btrainSttus,
    this.barvlDt,
    this.btrainNo,
    this.bstatnId,
    this.bstatnNm,
    this.recptnDt,
    this.arvlMsg2,
    this.arvlMsg3,
    this.arvlCd,
    this.lstcarAt,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'totalCount': totalCount,
      'result': result?.toJson(),
      'subwayId': subwayId,
      'updnLine': updnLine,
      'trainLineNm': trainLineNm,
      'statnFid': statnFid,
      'statnTid': statnTid,
      'statnId': statnId,
      'statnNm': statnNm,
      'trnsitCo': trnsitCo,
      'ordkey': ordkey,
      'subwayList': subwayList,
      'statnList': statnList,
      'btrainSttus': btrainSttus,
      'barvlDt': barvlDt,
      'btrainNo': btrainNo,
      'bstatnId': bstatnId,
      'bstatnNm': bstatnNm,
      'recptnDt': recptnDt,
      'arvlMsg2': arvlMsg2,
      'arvlMsg3': arvlMsg3,
      'arvlCd': arvlCd,
      'lstcarAt': lstcarAt,
    };
  }

  factory SubwayDto.fromJson(Map<String, dynamic> json) {
    return SubwayDto(
      totalCount: json['totalCount'] as int?,
      result: json['result'] != null
          ? ResultDto.fromJson(json['result'] as Map<String, dynamic>)
          : null,
      subwayId: json['subwayId'] as String?,
      updnLine: json['updnLine'] as String?,
      trainLineNm: json['trainLineNm'] as String?,
      statnFid: json['statnFid'] as String?,
      statnTid: json['statnTid'] as String?,
      statnId: json['statnId'] as String?,
      statnNm: json['statnNm'] as String?,
      trnsitCo: json['trnsitCo'] as int?,
      ordkey: json['ordkey'] as String?,
      subwayList: json['subwayList'] as String?,
      statnList: json['statnList'] as String?,
      btrainSttus: json['btrainSttus'] as String?,
      barvlDt: json['barvlDt'] as int?,
      btrainNo: json['btrainNo'] as String?,
      bstatnId: json['bstatnId'] as String?,
      bstatnNm: json['bstatnNm'] as String?,
      recptnDt: json['recptnDt'] as String?,
      arvlMsg2: json['arvlMsg2'] as String?,
      arvlMsg3: json['arvlMsg3'] as String?,
      arvlCd: json['arvlCd'] as String?,
      lstcarAt: json['lstcarAt'] as String?,
    );
  }
}

class ResultDto {
  String? code;
  String? message;

  ResultDto({this.code, this.message});

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'message': message,
    };
  }

  factory ResultDto.fromJson(Map<String, dynamic> json) {
    return ResultDto(
      code: json['code'] as String?,
      message: json['message'] as String?,
    );
  }
}
