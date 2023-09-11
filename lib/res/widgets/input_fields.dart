import 'package:flutter/material.dart';

import '../app/contants/manager/color_manager.dart';

Widget textInputField(
    {required String labelText,
    String? hintText,
    InputBorder? border,
    bool enabled = true,
    bool obscureText = false,
    bool filled = true,
    Color fillColor = const Color(0xFFE7E7E7),
    TextInputType? keyboardType,
    InputBorder? focusedBorder,
    TextEditingController? controller}) {
  return TextFormField(
    controller: controller,
    obscureText: obscureText,
    keyboardType: keyboardType,
    decoration: InputDecoration(
      labelText: labelText,
      labelStyle: TextStyle(
        color: colorManager.kTextColorLT,
      ),
      hintStyle: TextStyle(
        color: colorManager.kTextColorLTDim,
      ),
      hintText: hintText,
      enabledBorder: border ??
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
      fillColor: fillColor,
      filled: filled,
      border: focusedBorder ??
          OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.grey[300]!,
            ),
          ),
      enabled: enabled,
    ),
  );
}
