import 'package:equatable/equatable.dart';

/// A House entity
class HouseEntity extends Equatable {
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

  static String getBigPhotoFromSmallOne(String photoSmall) {
    return photoSmall.replaceAll('_klein.jpg', '_groot.jpg');
  }

  const HouseEntity(
      {required this.offeredSince,
      required this.numberOfRooms,
      required this.addess,
      required this.constructionYear,
      this.energylabel,
      required this.surface,
      required this.mainPhoto,
      required this.place,
      required this.zipCode,
      required this.price,
      required this.photosSmall,
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
