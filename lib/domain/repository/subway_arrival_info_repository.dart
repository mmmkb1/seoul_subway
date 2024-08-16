import 'package:seoul_subway/domain/model/subway.dart';

abstract interface class SubwayArrivalInfoRepository {
  Future<List<Subway>> getArrivalInfo(String query);
}
