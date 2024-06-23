import 'package:flutter/material.dart';
import 'package:funda/core/helpers.dart';
import 'package:funda/domain/entities/house_entity.dart';
import 'package:funda/presentation/screens/media/photo_screen.dart';

class MediaScreen extends StatelessWidget {
  final HouseEntity _house;
  const MediaScreen(this._house, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(myLoc(context).allMedia),
      ),
      body: ListView.builder(
        itemCount: _house.photosSmall.length,
        itemBuilder: (context, index) => ListTile(
          title: Image.network(
              HouseEntity.getBigPhotoFromSmallOne(_house.photosSmall[index])),
          contentPadding: const EdgeInsets.all(0),
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) => PhotoScreen(_house.photosSmall[index]),
          )),
        ),
      ),
    );
  }
}
