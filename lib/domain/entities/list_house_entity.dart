import 'package:equatable/equatable.dart';

class ListHouseEntity extends Equatable {
  final String id;
  final String offeredSince;
  final String addess;
  final String mainPhoto;
  final String place;
  final String zipCode;
  final int price;

  const ListHouseEntity({
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
