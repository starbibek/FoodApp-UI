import 'package:flutter/material.dart';

ColorManager colorManager = ColorManager.instance;

class ColorManager {
  ColorManager._();
  static ColorManager instance = ColorManager._();

  // light Colors
  Color kPrimaryColorLight = Colors.red;
  Color kPrimaryColorLightDim = Colors.redAccent;
  // Light Text Colors
  Color kTextColorDarkLT = Colors.black;
  Color kTextColorLT = const Color(0xff6A6A6A);
  Color kTextColorLTDim = const Color(0xFF7C7D7E);

  //Filler Colors
  Color kFillerColorLT = const Color(0xFFE7E7E7);

  // Light Icons Colors
  Color kIconColorLT = const Color(0xFF4A4B4D);
  Color kIconColorLTDim = const Color(0xFF7C7D7E);
  Color kIconColorLTDimmer = const Color(0xFFB6B7B7);
}
