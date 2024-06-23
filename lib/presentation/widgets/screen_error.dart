import 'package:flutter/material.dart';
import 'package:funda/core/app_exception.dart';
import 'package:funda/core/helpers.dart';
import 'package:funda/core/styles.dart';

class ScreenError extends StatelessWidget {
  final AppException appException;
  const ScreenError(this.appException, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(Styles.paddingNormal),
        child: Text(
            appException.message.isNotEmpty
                ? appException.message
                : (appException.code == 404
                    ? myLoc(context).errorNotFound
                    : myLoc(context).error),
            style: const TextStyle(color: Colors.red)),
      ),
    );
  }
}
