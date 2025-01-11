import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTheme {
  static const String greyColor = '#71767b';
  static const String blackColor = '#000000';
  static const String whiteColor = '#ffffff';
  static const String blueColor = '#1d9bf0';

  static Color backgroundColor = HexColor(blackColor);
  static Color primaryColor = HexColor(whiteColor);
  static Color accentColor = HexColor(greyColor);
  static Color secondaryColor = HexColor(blueColor);
}
