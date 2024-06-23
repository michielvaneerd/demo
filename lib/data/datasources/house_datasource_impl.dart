import 'package:funda/core/http_client.dart';
import 'package:funda/data/datasources/house_datasource.dart';
import 'package:funda/data/models/house_model.dart';
import 'package:funda/data/models/list_house_model.dart';

class HouseDatasourceImpl implements HouseDatasource {
  final HttpClient _httpClient;
  const HouseDatasourceImpl(this._httpClient);
  @override
  Future<HouseModel> getHouse({required String id}) async {
    final response = await _httpClient.get('json/detail/{api_key}/koop/$id/');
    return HouseModel.fromJson(response);
  }

  @override
  Future<List<ListHouseModel>> getHouses() async {
    return [
      const ListHouseModel(
          id: '76a042ae-6b70-4f93-a871-a45d3f7e135a',
          offeredSince: 'Vandaag',
          addess: 'Drieskensacker 1031',
          mainPhoto:
              'http://cloud.funda.nl/valentina_media/192/686/923_groot.jpg',
          place: 'Nijmegen',
          zipCode: '6525ZE',
          price: 635000),
      const ListHouseModel(
          id: 'cf1140e3-33dd-4fc5-aab8-93593fe99747',
          offeredSince: '13 juni 2024',
          addess: 'Robijnstraat 10',
          mainPhoto:
              'http://cloud.funda.nl/valentina_media/192/214/830_groot.jpg',
          place: 'Nijmegen',
          zipCode: '6534XS',
          price: 325000),
    ];
  }
}
