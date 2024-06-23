import 'package:equatable/equatable.dart';
import 'package:funda/domain/entities/house_entity.dart';

/// House model
class HouseModel extends Equatable {
  final String offeredSince;
  final int numberOfRooms;
  final String addess;
  final String constructionYear;
  final String? energylabel;
  final String mainPhoto;
  final String place;
  final String zipCode;
  final int price;
  final String description;
  final int surface;
  final List<String> photosSmall;

  HouseEntity toEntity() {
    return HouseEntity(
        offeredSince: offeredSince,
        numberOfRooms: numberOfRooms,
        addess: addess,
        constructionYear: constructionYear,
        mainPhoto: mainPhoto,
        place: place,
        zipCode: zipCode,
        price: price,
        surface: surface,
        photosSmall: photosSmall,
        description: description);
  }

  factory HouseModel.fromJson(Map<String, dynamic> json) {
    return HouseModel(
        offeredSince: json['AangebodenSindsTekst'],
        numberOfRooms: json['AantalKamers'],
        addess: json['Adres'],
        constructionYear: json['Bouwjaar'],
        mainPhoto: json['HoofdFoto'],
        place: json['Plaats'],
        zipCode: json['Postcode'],
        price: json['Koopprijs'],
        surface: json['WoonOppervlakte'],
        description: json['VolledigeOmschrijving'],
        photosSmall: json.containsKey('Media-Foto')
            ? (json['Media-Foto'] as List)
                .map((item) => item.toString())
                .toList()
            : [],
        energylabel: json['Energielabel']['Label']);
  }

  const HouseModel(
      {required this.offeredSince,
      required this.numberOfRooms,
      required this.addess,
      required this.constructionYear,
      this.energylabel,
      required this.mainPhoto,
      required this.place,
      required this.zipCode,
      required this.price,
      required this.photosSmall,
      required this.surface,
      required this.description});

  @override
  List<Object?> get props => [
        offeredSince,
        numberOfRooms,
        addess,
        constructionYear,
        energylabel,
        mainPhoto,
        place,
        zipCode,
        price,
        description,
        surface,
        photosSmall
      ];
}
