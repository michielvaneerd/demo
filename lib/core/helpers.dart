import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

AppLocalizations myLoc(BuildContext context) {
  return AppLocalizations.of(context)!;
}

String formatPrice(int price) {
  final format = NumberFormat.currency(locale: Platform.localeName);
  return format.format(price);
}

Future<bool> isOnline() async {
  final result = await Connectivity().checkConnectivity();
  return !result.contains(ConnectivityResult.none);
}
