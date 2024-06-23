import 'package:equatable/equatable.dart';
import 'package:funda/domain/entities/list_house_entity.dart';

class ListHouseModel extends Equatable {
  final String id;
  final String offeredSince;
  final String addess;
  final String mainPhoto;
  final String place;
  final String zipCode;
  final int price;

  ListHouseEntity toEntity() {
    return ListHouseEntity(
        id: id,
        offeredSince: offeredSince,
        addess: addess,
        mainPhoto: mainPhoto,
        place: place,
        zipCode: zipCode,
        price: price);
  }

  const ListHouseModel({
    required this.id,
    required this.offeredSince,
    required this.addess,
    required this.mainPhoto,
    required this.place,
    required this.zipCode,
    required this.price,
  });

  @override
  List<Object?> get props => [
        id,
        offeredSince,
        addess,
        mainPhoto,
        place,
        zipCode,
        price,
      ];
}
