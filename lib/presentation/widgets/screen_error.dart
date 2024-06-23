import 'package:flutter/material.dart';
import 'package:funda/core/app_exception.dart';
import 'package:funda/core/constants.dart';
import 'package:funda/core/helpers.dart';
import 'package:funda/core/styles.dart';

/// Widget that displays an error
class ScreenError extends StatelessWidget {
  final AppException appException;
  const ScreenError(this.appException, {super.key});

  String _getMessage(BuildContext context) {
    switch (appException.code) {
      case Constants.errorCodeConnection:
        return myLoc(context).noConnectionError;
      case Constants.errorCodeNotFound:
        return myLoc(context).errorNotFound;
      case Constants.errorCodeMissingApiKey:
        return myLoc(context).missingApiKey;
      default:
        return appException.message.isNotEmpty
            ? appException.message
            : myLoc(context).error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(Styles.paddingNormal),
        child: Text(_getMessage(context),
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.red)),
      ),
    );
  }
}
