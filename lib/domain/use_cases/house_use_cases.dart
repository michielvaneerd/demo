import 'package:funda/domain/entities/house_entity.dart';
import 'package:funda/domain/entities/list_house_entity.dart';
import 'package:funda/domain/repositories/house_repository.dart';

/// House use cases, called by the cubits in the presentation layer.
class HouseUseCases {
  final HouseRepository _houseRepository;
  const HouseUseCases(this._houseRepository);
  Future<HouseEntity> getHouse({required String id}) async {
    return _houseRepository.getHouse(id: id);
  }

  Future<List<ListHouseEntity>> getHouses() async {
    return _houseRepository.getListHouses();
  }
}
