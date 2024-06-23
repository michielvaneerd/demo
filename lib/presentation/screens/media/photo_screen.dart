import 'package:flutter/material.dart';
import 'package:funda/domain/entities/house_entity.dart';

/// Screen that displays one photo
class PhotoScreen extends StatelessWidget {
  final String _photoSmall;
  const PhotoScreen(this._photoSmall, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Image.network(
          HouseEntity.getBigPhotoFromSmallOne(_photoSmall),
          errorBuilder: (context, error, stackTrace) => const Placeholder(),
        ));
  }
}
