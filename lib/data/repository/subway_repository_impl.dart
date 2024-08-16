// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:seoul_subway/data/data_source/subway_api.dart';
import 'package:seoul_subway/domain/model/subway.dart';
import 'package:seoul_subway/domain/repository/subway_repository.dart';

class SubwayRepositoryImpl implements SubwayRepository {
  final SubwayApi api;

  SubwayRepositoryImpl({
    required this.api,
  });

  @override
  Future<List<Subway>> getSubways(String query) async {
    final dto = await api.getSubwayResult(query);


    return dto.hashCode((e) => e.toSubway()).toList();

  }
}
