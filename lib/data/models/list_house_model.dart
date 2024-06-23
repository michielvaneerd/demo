import 'package:equatable/equatable.dart';
import 'package:funda/domain/entities/list_house_entity.dart';
import 'package:xml/xml.dart';

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

  factory ListHouseModel.fromXMlElement(XmlElement el) {
    return ListHouseModel(
        id: el.getElement('Id')!.innerText,
        offeredSince: el.getElement('AangebodenSindsTekst')!.innerText,
        addess: el.getElement('Adres')!.innerText,
        mainPhoto: el.getElement('FotoLarge')!.innerText,
        place: el.getElement('Woonplaats')!.innerText,
        zipCode: el.getElement('Postcode')!.innerText,
        price: int.parse(
            el.getElement('Prijs')!.getElement('Koopprijs')!.innerText));
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
