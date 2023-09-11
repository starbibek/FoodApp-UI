import 'package:flutter/material.dart';
import 'package:food_ordering/res/app/utils/utils_index.dart';

///appButtons for buttons
///[text] for button text
///[textColor] for text color
///[textSize] for text size
///[backgroundColor] for background color
///[onPressed] for button action
///[buttonWidth] for button width
///[buttonHeight] for button height
///[context] for screen size
///[text] for button text
///[textColor] for button text color
///[textSize] for button text size
///[backgroundColor] for button background color
///[onPressed] for button action
appButtons(BuildContext context, text,
        {textColor,
        textSize,
        backgroundColor,
        borderColor,
        onPressed,
        buttonWidth,
        fontWeight,
        buttonHeight}) =>
    SizedBox(
      width: buttonWidth ?? 0.8.sw(context),
      height: buttonHeight ?? 0.06.sh(context),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: borderColor ?? Colors.redAccent,
          ),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          foregroundColor: textColor ?? Colors.white,
          backgroundColor: backgroundColor ?? const Color(0xFFFF5252),
          disabledForegroundColor: Colors.grey.withOpacity(0.38),
        ),
        child: Text(
          text ?? 'Your Text',
          style: TextStyle(
              fontSize:
                  textSize ?? Theme.of(context).textTheme.bodyLarge?.fontSize,
              fontWeight: fontWeight ?? FontWeight.w500),
        ),
      ),
    );
