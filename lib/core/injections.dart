import 'package:funda/core/http_client.dart';
import 'package:funda/data/datasources/house_datasource_impl.dart';
import 'package:funda/data/repositories/house_repository_impl.dart';
import 'package:funda/domain/use_cases/house_use_cases.dart';

class Injections {
  static late final HttpClient _httpClient;
  static late final HouseUseCases houseUseCases;
  static late final HouseDatasourceImpl _houseDatasourceImpl;
  static late final HouseRepositoryImpl houseRepositoryImpl;

  static void init() {
    _httpClient = HttpClient();
    _houseDatasourceImpl = HouseDatasourceImpl(_httpClient);
    houseRepositoryImpl = HouseRepositoryImpl(_houseDatasourceImpl);
    houseUseCases = HouseUseCases(houseRepositoryImpl);
  }
}
