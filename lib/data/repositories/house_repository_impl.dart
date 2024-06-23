import 'package:funda/data/datasources/house_datasource.dart';
import 'package:funda/domain/entities/house_entity.dart';
import 'package:funda/domain/entities/list_house_entity.dart';
import 'package:funda/domain/repositories/house_repository.dart';

/// Concrete House repository implementation, the abstract one is defined in the domain layer.
/// Gets models from the datasource and converts them to entities to be used in the presentation layer.
class HouseRepositoryImpl implements HouseRepository {
  final HouseDatasource _houseDatasource;
  HouseRepositoryImpl(this._houseDatasource);
  @override
  Future<HouseEntity> getHouse({required String id}) async {
    final house = await _houseDatasource.getHouse(id: id);
    return house.toEntity();
  }

  @override
  Future<List<ListHouseEntity>> getListHouses() async {
    final houses = await _houseDatasource.getHouses();
    return houses.map((model) => model.toEntity()).toList();
  }
}
