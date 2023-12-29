import 'package:flutter/material.dart';

class AppColorExtension extends ThemeExtension<AppColorExtension> {
  AppColorExtension(
      {required this.uiBackground,
      required this.uiWhitePress,
      required this.ui01,
      required this.ui02,
      required this.ui03,
      required this.ui04,
      required this.ui05,
      required this.ui06,
      required this.primary,
      required this.primaryPress,
      required this.secondary,
      required this.secondaryPress,
      required this.tertiary,
      required this.tertiaryPress,
      required this.text01,
      required this.text02,
      required this.text03,
      required this.text04,
      required this.text05,
      required this.textDisable,
      required this.imageBorder,
      required this.error,
      required this.caution,
      required this.alarm,
      required this.success});

  final Color uiBackground;
  final Color uiWhitePress;
  final Color ui01;
  final Color ui02;
  final Color ui03;
  final Color ui04;
  final Color ui05;
  final Color ui06;
  final Color primary;
  final Color primaryPress;
  final Color secondary;
  final Color secondaryPress;
  final Color tertiary;
  final Color tertiaryPress;
  final Color text01;
  final Color text02;
  final Color text03;
  final Color text04;
  final Color text05;
  final Color textDisable;
  final Color imageBorder;
  final Color error;
  final Color caution;
  final Color alarm;
  final Color success;

  @override
  ThemeExtension<AppColorExtension> copyWith(
      {Color? uiBackground,
      Color? uiWhitePress,
      Color? dimBackground,
      Color? ui01,
      Color? ui02,
      Color? ui03,
      Color? ui04,
      Color? ui05,
      Color? ui06,
      Color? primary,
      Color? primaryPress,
      Color? secondary,
      Color? secondaryPress,
      Color? tertiary,
      Color? tertiaryPress,
      Color? text01,
      Color? text02,
      Color? text03,
      Color? text04,
      Color? text05,
      Color? textDisable,
      Color? imageBorder,
      Color? error,
      Color? caution,
      Color? alarm,
      Color? success}) {
    return AppColorExtension(
        uiBackground: uiBackground ?? this.uiBackground,
        uiWhitePress: uiWhitePress ?? this.uiWhitePress,
        ui01: ui01 ?? this.ui01,
        ui02: ui02 ?? this.ui02,
        ui03: ui03 ?? this.ui03,
        ui04: ui04 ?? this.ui04,
        ui05: ui05 ?? this.ui05,
        ui06: ui06 ?? this.ui06,
        primary: primary ?? this.primary,
        primaryPress: primaryPress ?? this.primaryPress,
        secondary: secondary ?? this.secondary,
        secondaryPress: secondaryPress ?? this.secondaryPress,
        tertiary: tertiary ?? this.tertiary,
        tertiaryPress: tertiaryPress ?? this.tertiaryPress,
        text01: text01 ?? this.text01,
        text02: text02 ?? this.text02,
        text03: text03 ?? this.text03,
        text04: text04 ?? this.text04,
        text05: text05 ?? this.text05,
        textDisable: textDisable ?? this.textDisable,
        imageBorder: imageBorder ?? this.imageBorder,
        error: error ?? this.error,
        caution: caution ?? this.caution,
        alarm: alarm ?? this.alarm,
        success: success ?? this.success);
  }

  @override
  ThemeExtension<AppColorExtension> lerp(
      covariant ThemeExtension<AppColorExtension>? other, double t) {
    if (other is! AppColorExtension) {
      return this;
    }

    return AppColorExtension(
        uiBackground: Color.lerp(uiBackground, other.uiBackground, t)!,
        uiWhitePress: Color.lerp(uiWhitePress, other.uiWhitePress, t)!,
        ui01: Color.lerp(ui01, other.ui01, t)!,
        ui02: Color.lerp(ui02, other.ui02, t)!,
        ui03: Color.lerp(ui03, other.ui03, t)!,
        ui04: Color.lerp(ui04, other.ui04, t)!,
        ui05: Color.lerp(ui05, other.ui05, t)!,
        ui06: Color.lerp(ui06, other.ui06, t)!,
        primary: Color.lerp(primary, other.primary, t)!,
        primaryPress: Color.lerp(primaryPress, other.primaryPress, t)!,
        secondary: Color.lerp(secondary, other.secondary, t)!,
        secondaryPress: Color.lerp(secondaryPress, other.secondaryPress, t)!,
        tertiary: Color.lerp(tertiary, other.tertiary, t)!,
        tertiaryPress: Color.lerp(tertiaryPress, other.tertiaryPress, t)!,
        text01: Color.lerp(text01, other.text01, t)!,
        text02: Color.lerp(text02, other.text02, t)!,
        text03: Color.lerp(text03, other.text03, t)!,
        text04: Color.lerp(text04, other.text04, t)!,
        text05: Color.lerp(text05, other.text05, t)!,
        textDisable: Color.lerp(textDisable, other.textDisable, t)!,
        imageBorder: Color.lerp(imageBorder, other.imageBorder, t)!,
        error: Color.lerp(error, other.error, t)!,
        caution: Color.lerp(caution, other.caution, t)!,
        alarm: Color.lerp(alarm, other.alarm, t)!,
        success: Color.lerp(success, other.success, t)!);
  }
}
