import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

class CustomLogger {
  static final Logger logger = Logger();
}

void dPrint(
    String? message, { int? wrapWidth }
    ) => debugPrint(message, wrapWidth: wrapWidth);
void logD(
  dynamic message, {
  DateTime? time,
  Object? error,
  StackTrace? stackTrace,
}) => CustomLogger.logger.d(
    message,
    time: time,
    error: error,
    stackTrace: stackTrace,
  );

void logI(
    dynamic message, {
      DateTime? time,
      Object? error,
      StackTrace? stackTrace,
    }) => CustomLogger.logger.i(
  message,
  time: time,
  error: error,
  stackTrace: stackTrace,
);

void logW(
    dynamic message, {
      DateTime? time,
      Object? error,
      StackTrace? stackTrace,
    }) => CustomLogger.logger.w(
  message,
  time: time,
  error: error,
  stackTrace: stackTrace,
);

void logT(
    dynamic message, {
      DateTime? time,
      Object? error,
      StackTrace? stackTrace,
    }) => CustomLogger.logger.t(
  message,
  time: time,
  error: error,
  stackTrace: stackTrace,
);

void logE(
  dynamic message, {
  DateTime? time,
  Object? error,
  StackTrace? stackTrace,
}) {
  CustomLogger.logger.e(
    message,
    time: time,
    error: error,
    stackTrace: stackTrace,
  );

  // await FirebaseCrashlytics.instance.recordError(
  //     error,
  //     stackTrace,
  //     reason: 'a non-fatal error'
  // );
}