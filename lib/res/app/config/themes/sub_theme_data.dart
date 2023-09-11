import 'package:flutter/material.dart';

import '../../contants/manager/color_manager.dart';

mixin SubThemeData {
  AppBarTheme getAppBarThemeLight() {
    return AppBarTheme(
        elevation: 0,
        backgroundColor: colorManager.kPrimaryColorLight,
        titleTextStyle: const TextStyle(
            fontWeight: FontWeight.w600, fontFamily: 'Poppins', fontSize: 20));
  }

  FloatingActionButtonThemeData getFloatingActionButtonThemeLight() {
    return FloatingActionButtonThemeData(
      backgroundColor: colorManager.kPrimaryColorLight,
      extendedTextStyle: const TextStyle(
        fontFamily: 'Poppins',
      ),
      splashColor: colorManager.kPrimaryColorLight,
    );
  }

  IconThemeData getPrimaryIconThemeData() {
    return IconThemeData(
      color: colorManager.kIconColorLT,
      size: 20,
    );
  }

  TextButtonThemeData getTextButtonThemeData() {
    return TextButtonThemeData(style: getElavatedButtonTheme());
  }

  IconThemeData getIconTheme() {
    return IconThemeData(
      color: colorManager.kIconColorLT,
      size: 18,
    );
  }

  ButtonStyle getElavatedButtonTheme() {
    return ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }

  BottomNavigationBarThemeData getBottomNavigationBarTheme() {
    return const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false);
  }
}
