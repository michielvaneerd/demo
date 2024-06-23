import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:funda/core/constants.dart';

class AppException extends Equatable implements Exception {
  final String message;
  final int code;
  const AppException({required this.message, required this.code});

  factory AppException.fromException(Exception ex) {
    if (ex is AppException) {
      return ex;
    }
    return AppException(
        message: kDebugMode ? ex.toString() : 'An error occurred',
        code: Constants.errorCodeUnknown);
  }

  @override
  List<Object?> get props => [message, code];
}
