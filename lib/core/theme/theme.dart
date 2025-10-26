import 'package:flutter/material.dart';
import 'package:verifi/core/theme/theme_export.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  // fontFamily: FontFamily.fustat,
  colorScheme: ColorScheme.light(
    surface: AppColor.kBGColor,
    primary: AppColor.kComponentColor,
    secondary: Colors.grey.shade200,
    onSurface: AppColor.kTXTColor,
  ),
);
