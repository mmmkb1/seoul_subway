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
    try {
      final dtoList = await api.getSubways(query); // `api.getSubways(query)`가 `List<SubwayDto>`를 반환한다고 가정합니다.

      // `dtoList`가 List<SubwayDto> 타입이라고 가정하고, 각 `SubwayDto`를 `Subway`로 변환합니다.
      return dtoList.map((dto) => dto.toSubway()).toList();
    } catch (e) {
      // 예외 처리
      throw Exception('Failed to get subways: $e');
    }
  }
}