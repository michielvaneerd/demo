import 'package:funda/domain/entities/house_entity.dart';
import 'package:funda/domain/entities/list_house_entity.dart';

abstract class HouseRepository {
  Future<HouseEntity> getHouse({required String id});
  Future<List<ListHouseEntity>> getListHouses();
}
