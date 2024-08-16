abstract interface class SubwayArrivalInfoRepository {
  Future<Result<List<SubwayArrivalInfo>>> getArrivalInfo(String stationId);
}
