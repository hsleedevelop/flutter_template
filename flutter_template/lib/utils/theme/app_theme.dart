import 'package:flutter/material.dart';

import 'app_color_theme_extension.dart';
import 'app_palette.dart';
import 'app_text_Theme_extension.dart';
import 'app_typography.dart';

class AppTheme with ChangeNotifier {
  static final appColors = AppColorExtension(
    uiBackground: AppPalette.white,
    uiWhitePress: AppPalette.grayTransparent.gray720,
    ui01: AppPalette.gray.gray100,
    ui02: AppPalette.gray.gray200,
    ui03: AppPalette.gray.gray400,
    ui04: AppPalette.gray.gray700,
    ui05: AppPalette.gray.gray900,
    ui06: AppPalette.gray.gray1000,
    primary: AppPalette.blue.blue500,
    primaryPress: AppPalette.blue.blue600,
    secondary: AppPalette.blue.blue100,
    secondaryPress: AppPalette.blue.blue200,
    tertiary: AppPalette.gray.gray100,
    tertiaryPress: AppPalette.gray.gray200,
    text01: AppPalette.gray.gray1000,
    text02: AppPalette.gray.gray800,
    text03: AppPalette.gray.gray700,
    text04: AppPalette.gray.gray600,
    text05: AppPalette.gray.gray500,
    textDisable: AppPalette.gray.gray400,
    imageBorder: AppPalette.grayTransparent.gray710,
    error: AppPalette.red.red500,
    caution: AppPalette.yellow.yellow500,
    alarm: AppPalette.orange.orange500,
    success: AppPalette.green.green500,
  );

  static final appTexts = AppTextThemeExtension(
    headline03: AppTypography.eHeadline03.copyWith(color: appColors.text01),
    headline02: AppTypography.eHeadline02.copyWith(color: appColors.text01),
    headline01: AppTypography.eHeadline01.copyWith(color: appColors.text01),
    subhead04b: AppTypography.eSubhead04b.copyWith(color: appColors.text01),
    subhead03b: AppTypography.eSubhead03b.copyWith(color: appColors.text01),
    subhead02b: AppTypography.eSubhead02b.copyWith(color: appColors.text01),
    subhead01b: AppTypography.eSubhead01b.copyWith(color: appColors.text01),
    body06m: AppTypography.eBody06m.copyWith(color: appColors.text01),
    body06r: AppTypography.eBody06r.copyWith(color: appColors.text01),
    body05m: AppTypography.eBody05m.copyWith(color: appColors.text01),
    body05r: AppTypography.eBody05r.copyWith(color: appColors.text01),
    body04m: AppTypography.eBody04m.copyWith(color: appColors.text01),
    body04r: AppTypography.eBody04r.copyWith(color: appColors.text01),
    body03m: AppTypography.eBody03m.copyWith(color: appColors.text01),
    body03r: AppTypography.eBody03r.copyWith(color: appColors.text01),
    body02m: AppTypography.eBody02m.copyWith(color: appColors.text01),
    body02r: AppTypography.eBody02r.copyWith(color: appColors.text01),
    body01m: AppTypography.eBody01m.copyWith(color: appColors.text01),
    body01r: AppTypography.eBody01r.copyWith(color: appColors.text01),
    caption02m: AppTypography.eCaption02m.copyWith(color: appColors.text01),
    caption02r: AppTypography.eCaption02r.copyWith(color: appColors.text01),
    caption01r: AppTypography.eCaption01r.copyWith(color: appColors.text01),
  );
}

extension AppThemeExtension on ThemeData {
  AppTextThemeExtension get appTexts =>
      extension<AppTextThemeExtension>() ?? AppTheme.appTexts;

  AppColorExtension get appColors =>
      extension<AppColorExtension>() ?? AppTheme.appColors;

  //AppIcons get appIcons => AppIcons();
}

extension ThemeGetter on BuildContext {
  ThemeData get appTheme => Theme.of(this);

  AppTextThemeExtension get appTexts => Theme.of(this).appTexts;

  AppColorExtension get appColors => Theme.of(this).appColors;

  //AppIcons get appIcons => Theme.of(this).appIcons;
}
