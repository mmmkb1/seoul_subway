class SubwayDto {
  final ErrorMessage? errorMessage;
  final List<RealtimeArrivalList>? realtimeArrivalList;

  const SubwayDto({
    this.errorMessage,
    this.realtimeArrivalList,
  });

  factory SubwayDto.fromJson(Map<String, dynamic> json) {
    return SubwayDto(
      errorMessage: json['errorMessage'] != null 
          ? ErrorMessage.fromJson(json['errorMessage']) 
          : null,
      realtimeArrivalList: json['realtimeArrivalList'] != null 
          ? (json['realtimeArrivalList'] as List)
              .map((item) => RealtimeArrivalList.fromJson(item))
              .toList() 
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'errorMessage': errorMessage?.toJson(),
      'realtimeArrivalList': realtimeArrivalList?.map((item) => item.toJson()).toList(),
    };
  }
}

class ErrorMessage {
  final int? status;
  final String? code;
  final String? message;
  final String? link;
  final String? developerMessage;
  final int? total;

  const ErrorMessage({
    this.status,
    this.code,
    this.message,
    this.link,
    this.developerMessage,
    this.total,
  });

  factory ErrorMessage.fromJson(Map<String, dynamic> json) {
    return ErrorMessage(
      status: json['status'],
      code: json['code'],
      message: json['message'],
      link: json['link'],
      developerMessage: json['developerMessage'],
      total: json['total'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'code': code,
      'message': message,
      'link': link,
      'developerMessage': developerMessage,
      'total': total,
    };
  }
}

class RealtimeArrivalList {
  final int? totalCount;
  final int? rowNum;
  final int? selectedCount;
  final String? subwayId;
  final String? subwayNm;
  final String? updnLine;
  final String? trainLineNm;
  final String? subwayHeading;
  final String? statnFid;
  final String? statnTid;
  final String? statnId;
  final String? statnNm;
  final String? trainCo;
  final String? trnsitCo;
  final String? ordkey;
  final String? subwayList;
  final String? statnList;
  final String? btrainSttus;
  final String? barvlDt;
  final String? btrainNo;
  final String? bstatnId;
  final String? bstatnNm;
  final String? recptnDt;
  final String? arvlMsg2;
  final String? arvlMsg3;
  final String? arvlCd;
  final String? lstcarAt;

  const RealtimeArrivalList({
    this.totalCount,
    this.rowNum,
    this.selectedCount,
    this.subwayId,
    this.subwayNm,
    this.updnLine,
    this.trainLineNm,
    this.subwayHeading,
    this.statnFid,
    this.statnTid,
    this.statnId,
    this.statnNm,
    this.trainCo,
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

  factory RealtimeArrivalList.fromJson(Map<String, dynamic> json) {
    return RealtimeArrivalList(
      totalCount: json['totalCount'],
      rowNum: json['rowNum'],
      selectedCount: json['selectedCount'],
      subwayId: json['subwayId'],
      subwayNm: json['subwayNm'],
      updnLine: json['updnLine'],
      trainLineNm: json['trainLineNm'],
      subwayHeading: json['subwayHeading'],
      statnFid: json['statnFid'],
      statnTid: json['statnTid'],
      statnId: json['statnId'],
      statnNm: json['statnNm'],
      trainCo: json['trainCo'],
      trnsitCo: json['trnsitCo'],
      ordkey: json['ordkey'],
      subwayList: json['subwayList'],
      statnList: json['statnList'],
      btrainSttus: json['btrainSttus'],
      barvlDt: json['barvlDt'],
      btrainNo: json['btrainNo'],
      bstatnId: json['bstatnId'],
      bstatnNm: json['bstatnNm'],
      recptnDt: json['recptnDt'],
      arvlMsg2: json['arvlMsg2'],
      arvlMsg3: json['arvlMsg3'],
      arvlCd: json['arvlCd'],
      lstcarAt: json['lstcarAt'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'rowNum': rowNum,
      'selectedCount': selectedCount,
      'subwayId': subwayId,
      'subwayNm': subwayNm,
      'updnLine': updnLine,
      'trainLineNm': trainLineNm,
      'subwayHeading': subwayHeading,
      'statnFid': statnFid,
      'statnTid': statnTid,
      'statnId': statnId,
      'statnNm': statnNm,
      'trainCo': trainCo,
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
}