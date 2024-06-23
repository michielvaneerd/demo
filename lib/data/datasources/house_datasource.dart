import 'package:funda/data/models/house_model.dart';
import 'package:funda/data/models/list_house_model.dart';

/// Abstract House datasource
abstract class HouseDatasource {
  const HouseDatasource();
  Future<HouseModel> getHouse({required String id});
  Future<List<ListHouseModel>> getHouses();
}
