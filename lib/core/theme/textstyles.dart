import 'package:flutter/material.dart';
import 'package:verifi/assets_gen/fonts_gen.dart';

class AppTextStyles {
  /// Header 1
  /// Font Size: 34
  /// Font Weight: Bold (w700)
  /// Font Family: Default (override if using custom font)
  static const TextStyle kHeader1 = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
    height: 1.2,
    fontFamily: FontFamily.lexend,
  );

  /// Header 2
  /// Font Size: 20
  /// Font Weight: Semi-Bold (w600)
  /// Font Family: Default
  static const TextStyle kHeader2 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.2,
    fontFamily: FontFamily.lexend,
  );

  /// Title Style
  /// Font Size: 14
  /// Font Weight: Semi-Bold (w600)
  /// Font Family: Default
  static const TextStyle kTitleStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 16 / 14,
    fontFamily: FontFamily.lexend,
  );

  /// Title Style
  /// Font Size: 14
  /// Font Weight: Semi-Bold (w600)
  /// Font Family: Default
  static const TextStyle kBoldStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 16 / 14,
    fontFamily: FontFamily.lexend,
  );

  /// Body
  /// Font Size: 13
  /// Font Weight: Regular (w400)
  /// Font Family: Default
  static const TextStyle kMediumBody = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    height: 1.3,
    fontFamily: FontFamily.lexend,
  );

  /// Body
  /// Font Size: 13
  /// Font Weight: Regular (w400)
  /// Font Family: Default
  static const TextStyle kBody = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.3,
    fontFamily: FontFamily.lexend,
  );

  /// Body Text
  /// Font Size: 13
  /// Font Weight: Regular (w400)
  /// Font Family: Default
  static const TextStyle kBodyText = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 1.3,
    fontFamily: FontFamily.lexend,
  );

  /// Body Text
  /// Font Size: 16
  /// Font Weight: Regular (w400)
  /// Font Family: Default
  static const TextStyle kBodyRegular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.3,
    fontFamily: FontFamily.lexend,
  );
}
