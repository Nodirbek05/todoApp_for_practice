import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#81C7F5");
  static Color bottomIconColor = HexColor.fromHex("#DADADA");
  static Color grey = HexColor.fromHex("#737477");
  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color primaryOpacity70 = HexColor.fromHex("#B3ED9728");
  static Color colorofElevated = HexColor.fromHex("#5DE61A");
  static Color colorOfRectangle = HexColor.fromHex("#81C7F5");
  static Color colorOfRectangle2 = HexColor.fromHex("#3867D5");
  static Color gridCircleColor = HexColor.fromHex("##FFEE9B");
  static Color gridCircleColorcase = HexColor.fromHex("#B5FF9B");
  static Color gridCircleColorofmeeting = HexColor.fromHex("#FF9BCD");
  static Color gricCircleColorofshoping = HexColor.fromHex("#FFD09B");
  // new colors
  static Color grey1 = HexColor.fromHex("#707070");
  static Color grey2 = HexColor.fromHex("#797979");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color error = HexColor.fromHex("#e61f34");
  static Color black= HexColor.fromHex("#000000"); 
  static Color shadowColorYellow = HexColor.fromHex("##FFD506");
  static Color shadowColorRed = HexColor.fromHex("#D10263");
  static Color shadowColorGreen = HexColor.fromHex("#D10263");
  static Color colorofText = HexColor.fromHex("#554E8F");
  static Color whitecolor = HexColor.fromHex("#ffffff");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}