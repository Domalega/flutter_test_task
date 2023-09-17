import 'package:flutter/material.dart';
import 'package:flutter_test_task/constants/colors.dart';

final mainTheme = ThemeData(
  appBarTheme: const AppBarTheme(color: bgPrimary),
  scaffoldBackgroundColor: bgPrimary,
  primaryColor: bgPrimary,
  dividerColor: bgSecondary,
  indicatorColor: accentColor,
  unselectedWidgetColor: bgSecondary,
  textTheme: const TextTheme(
      bodyLarge: TextStyle(
          color: textPrimary, fontWeight: FontWeight.w700, fontSize: 18),
      bodyMedium: TextStyle(
          color: textPrimary, fontWeight: FontWeight.w700, fontSize: 16),
      bodySmall: TextStyle(
          color: textPrimary, fontWeight: FontWeight.w400, fontSize: 14),
      titleMedium: TextStyle(color: textPrimary),
      labelMedium: TextStyle(color: bgPrimary)),
);
