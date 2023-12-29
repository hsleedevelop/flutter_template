import 'package:flutter/material.dart';

abstract class AppPalette {
  static const black = Colors.black;
  static const white = Colors.white;
  static const whiteTransparent = _WhiteTransparentColors();
  static const grayTransparent = _GrayTransparentColors();
  static const gray = _GrayColors();
  static const blue = _BlueColors();
  static const green = _GreenColors();
  static const red = _RedColors();
  static const orange = _OrangeColors();
  static const yellow = _YellowColors();
}

class _WhiteTransparentColors {
  const _WhiteTransparentColors();

  final white190 = const Color(0xE6FFFFFF);
  final white185 = const Color(0xD9FFFFFF);
  final white180 = const Color(0xCCFFFFFF);
  final white170 = const Color(0xB3FFFFFF);
  final white160 = const Color(0x99FFFFFF);
  final white150 = const Color(0x80FFFFFF);
  final white140 = const Color(0x66FFFFFF);
  final white130 = const Color(0x4DFFFFFF);
  final white120 = const Color(0x33FFFFFF);
  final white110 = const Color(0x1AFFFFFF);
}

class _GrayColors {
  const _GrayColors();

  final gray1000 = const Color(0xFF1A1E27);
  final gray900 = const Color(0xFF333D4B);
  final gray800 = const Color(0xFF4E5661);
  final gray700 = const Color(0xFF6D7582);
  final gray600 = const Color(0xFF7C838F);
  final gray500 = const Color(0xFF9197A1);
  final gray400 = const Color(0xFFB1B8C0);
  final gray300 = const Color(0xFFD0D4D9);
  final gray200 = const Color(0xFFE0E3E6);
  final gray100 = const Color(0xFFF2F3F5);
}

class _GrayTransparentColors {
  const _GrayTransparentColors();

  final gray980 = const Color(0xCC333D4B);
  final gray950 = const Color(0x80333D4B);
  final gray790 = const Color(0xE66D7582);
  final gray785 = const Color(0xD96D7582);
  final gray780 = const Color(0xCC6D7582);
  final gray770 = const Color(0xB36D7582);
  final gray760 = const Color(0x996D7582);
  final gray750 = const Color(0x806D7582);
  final gray740 = const Color(0x666D7582);
  final gray730 = const Color(0x4D6D7582);
  final gray720 = const Color(0x336D7582);
  final gray710 = const Color(0x1A6D7582);
}

class _BlueColors {
  const _BlueColors();

  final blue1000 = const Color(0xFF0A3C82);
  final blue900 = const Color(0xFF0A4BAA);
  final blue800 = const Color(0xFF0F5AC3);
  final blue700 = const Color(0xFF0F5AC3);
  final blue600 = const Color(0xFF0A64EB);
  final blue500 = const Color(0xFF0F73FF);
  final blue400 = const Color(0xFF418CFF);
  final blue300 = const Color(0xFF96BEFF);
  final blue200 = const Color(0xFFBED7FF);
  final blue100 = const Color(0xFFE1EEFF);
}

class _GreenColors {
  const _GreenColors();

  final green600 = const Color(0xFF1EB469);
  final green500 = const Color(0xFF23C873);
  final green400 = const Color(0xFF5AD796);
  final green300 = const Color(0xFF91E1B9);
  final green200 = const Color(0xFFBEF0D7);
  final green100 = const Color(0xFFE1FAEB);
}

class _RedColors {
  const _RedColors();

  final red600 = const Color(0xFFC80000);
  final red500 = const Color(0xFFDF1D1D);
  final red400 = const Color(0xFFEB505F);
  final red300 = const Color(0xFFF5B7B7);
  final red200 = const Color(0xFFFFDCDC);
  final red100 = const Color(0xFFFFF0F0);
}

class _OrangeColors {
  const _OrangeColors();

  final orange600 = const Color(0xFFFF6400);
  final orange500 = const Color(0xFFFF7E27);
  final orange400 = const Color(0xFFFA9B5A);
  final orange300 = const Color(0xFFFFCBA9);
  final orange200 = const Color(0xFFFFE5D4);
  final orange100 = const Color(0xFFFFF2E9);
}

class _YellowColors {
  const _YellowColors();

  final yellow600 = const Color(0xFFFFB91E);
  final yellow500 = const Color(0xFFFFCD28);
  final yellow400 = const Color(0xFFFFDC60);
  final yellow300 = const Color(0xFFFFEBAA);
  final yellow200 = const Color(0xFFFFF4D0);
  final yellow100 = const Color(0xFFFFFAEB);
}
