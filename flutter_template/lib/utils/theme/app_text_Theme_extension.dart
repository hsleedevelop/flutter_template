import 'package:flutter/material.dart';

class AppTextThemeExtension extends ThemeExtension<AppTextThemeExtension> {
  AppTextThemeExtension({
    required this.headline03,
    required this.headline02,
    required this.headline01,
    required this.subhead04b,
    required this.subhead03b,
    required this.subhead02b,
    required this.subhead01b,
    required this.body06m,
    required this.body06r,
    required this.body05m,
    required this.body05r,
    required this.body04m,
    required this.body04r,
    required this.body03m,
    required this.body03r,
    required this.body02m,
    required this.body02r,
    required this.body01m,
    required this.body01r,
    required this.caption02m,
    required this.caption02r,
    required this.caption01r,
  });

  final TextStyle headline03;
  final TextStyle headline02;
  final TextStyle headline01;

  final TextStyle subhead04b;
  final TextStyle subhead03b;
  final TextStyle subhead02b;
  final TextStyle subhead01b;

  final TextStyle body06m;
  final TextStyle body06r;
  final TextStyle body05m;
  final TextStyle body05r;
  final TextStyle body04m;
  final TextStyle body04r;
  final TextStyle body03m;
  final TextStyle body03r;
  final TextStyle body02m;
  final TextStyle body02r;
  final TextStyle body01m;
  final TextStyle body01r;

  final TextStyle caption02m;
  final TextStyle caption02r;
  final TextStyle caption01r;

  @override
  ThemeExtension<AppTextThemeExtension> copyWith(
      {TextStyle? headline03,
      TextStyle? headline02,
      TextStyle? headline01,
      TextStyle? subhead04b,
      TextStyle? subhead03b,
      TextStyle? subhead02b,
      TextStyle? subhead01b,
      TextStyle? body06m,
      TextStyle? body06r,
      TextStyle? body05m,
      TextStyle? body05r,
      TextStyle? body04m,
      TextStyle? body04r,
      TextStyle? body03m,
      TextStyle? body03r,
      TextStyle? body02m,
      TextStyle? body02r,
      TextStyle? body01m,
      TextStyle? body01r,
      TextStyle? caption02m,
      TextStyle? caption02r,
      TextStyle? caption01r}) {
    return AppTextThemeExtension(
      headline03: headline03 ?? this.headline03,
      headline02: headline02 ?? this.headline02,
      headline01: headline01 ?? this.headline01,
      subhead04b: subhead04b ?? this.subhead04b,
      subhead03b: subhead03b ?? this.subhead03b,
      subhead02b: subhead02b ?? this.subhead02b,
      subhead01b: subhead01b ?? this.subhead01b,
      body06m: body06m ?? this.body06m,
      body06r: body06r ?? this.body06r,
      body05m: body05m ?? this.body05m,
      body05r: body05r ?? this.body05r,
      body04m: body04m ?? this.body04m,
      body04r: body04r ?? this.body04r,
      body03m: body03m ?? this.body03m,
      body03r: body03r ?? this.body03r,
      body02m: body02m ?? this.body02m,
      body02r: body02r ?? this.body02r,
      body01m: body01m ?? this.body01m,
      body01r: body01r ?? this.body01r,
      caption02m: caption02m ?? this.caption02m,
      caption02r: caption02r ?? this.caption02r,
      caption01r: caption01r ?? this.caption01r,
    );
  }

  @override
  ThemeExtension<AppTextThemeExtension> lerp(
      covariant ThemeExtension<AppTextThemeExtension>? other, double t) {
    if (other is! AppTextThemeExtension) {
      return this;
    }
    return AppTextThemeExtension(
      headline03: TextStyle.lerp(headline03, other.headline03, t)!,
      headline02: TextStyle.lerp(headline02, other.headline02, t)!,
      headline01: TextStyle.lerp(headline01, other.headline01, t)!,
      subhead04b: TextStyle.lerp(subhead04b, other.subhead04b, t)!,
      subhead03b: TextStyle.lerp(subhead03b, other.subhead03b, t)!,
      subhead02b: TextStyle.lerp(subhead02b, other.subhead02b, t)!,
      subhead01b: TextStyle.lerp(subhead01b, other.subhead01b, t)!,
      body06m: TextStyle.lerp(body06m, other.body06m, t)!,
      body06r: TextStyle.lerp(body06r, other.body06r, t)!,
      body05m: TextStyle.lerp(body05m, other.body05m, t)!,
      body05r: TextStyle.lerp(body05r, other.body05r, t)!,
      body04m: TextStyle.lerp(body04m, other.body04m, t)!,
      body04r: TextStyle.lerp(body04r, other.body04r, t)!,
      body03m: TextStyle.lerp(body03m, other.body03m, t)!,
      body03r: TextStyle.lerp(body03r, other.body03r, t)!,
      body02m: TextStyle.lerp(body02m, other.body02m, t)!,
      body02r: TextStyle.lerp(body02r, other.body02r, t)!,
      body01m: TextStyle.lerp(body01m, other.body01m, t)!,
      body01r: TextStyle.lerp(body01r, other.body01r, t)!,
      caption02m: TextStyle.lerp(caption02m, other.caption02m, t)!,
      caption02r: TextStyle.lerp(caption02r, other.caption02r, t)!,
      caption01r: TextStyle.lerp(caption01r, other.caption01r, t)!,
    );
  }
}
