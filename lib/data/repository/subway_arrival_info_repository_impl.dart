import 'package:seoul_subway/data/data_source/subway_api.dart';
import 'package:seoul_subway/data/mapper/sbuway_mapper.dart';
import 'package:seoul_subway/domain/model/subway.dart';

import '../../domain/repository/subway_arrival_info_repository.dart';

class SubwayRepositoryImpl implements SubwayRepository {
  final SubwayApi _subwayApi;
SubwayRepositoryImpl({
    required SubwayApi subwayApi,
  }) : _subwayApi = subwayApi;

  @override
  Future<List<Subway>> getSubways(String query) async {
    final results = await _subwayApi.getSubwayReults(query);
      return results.map((result)=>result.toSubway()).toList();
  }
}
