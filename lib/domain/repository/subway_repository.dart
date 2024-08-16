import 'package:seoul_subway/domain/model/subway.dart';

abstract interface class SubwayRepository {
  Future<List<Subway>> getSubways(String query);
}