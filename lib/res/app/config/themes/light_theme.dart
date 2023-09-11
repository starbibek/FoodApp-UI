import 'package:flutter/material.dart';

import '../../contants/manager/color_manager.dart';

final ThemeData lightTheme = ThemeData(
  primaryColor: Colors.redAccent,
  useMaterial3: true,
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      color: colorManager.kTextColorDarkLT,
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      color: colorManager.kTextColorLT,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    displaySmall: TextStyle(
      color: colorManager.kTextColorLT,
      fontSize: 18,
      fontWeight: FontWeight.w700,
    ),
    headlineLarge: TextStyle(
      color: colorManager.kTextColorLT,
      fontSize: 30,
      fontWeight: FontWeight.w700,
    ),
    headlineMedium: TextStyle(
      color: colorManager.kTextColorDarkLT,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: TextStyle(
      color: colorManager.kTextColorLT,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    titleLarge: TextStyle(
      color: colorManager.kTextColorDarkLT,
      fontSize: 12,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: TextStyle(
      color: colorManager.kTextColorDarkLT,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: TextStyle(
      color: colorManager.kTextColorLTDim,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    titleMedium: TextStyle(
      color: colorManager.kTextColorLTDim,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    titleSmall: TextStyle(
      color: colorManager.kTextColorLT,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    labelLarge: TextStyle(
      color: colorManager.kTextColorLT,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
    bodySmall: TextStyle(
      color: colorManager.kTextColorLT,
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    labelSmall: TextStyle(
      color: colorManager.kTextColorLT,
      fontSize: 10,
      fontWeight: FontWeight.w400,
    ),
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    iconTheme: IconThemeData(color: Colors.redAccent),
    toolbarTextStyle: TextStyle(color: Colors.redAccent),
    titleTextStyle: TextStyle(color: Colors.redAccent),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.redAccent,
  ),
);
