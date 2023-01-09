import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//color
const primaryColor = Color(0xFF99C6FF);
const secondaryColor = Colors.black;
const bgColor = Colors.white;
const mainColor = Color(0xFFEFEFEF);
const seeColor = Color(0xFF3B37FF);

//text
class ConstantMobile {
  static TextStyle brandText = GoogleFonts.mina(
    textStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        foreground: Paint()
          ..shader = LinearGradient(
            colors: const <Color>[
              Color(0xFFFF6262),
              Color(0xFF4383FF),
            ],
          ).createShader(Rect.fromLTWH(0, 0, 800, 100))),
  );
  static TextStyle searchText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold,
      fontSize: 12,
      color: secondaryColor.withOpacity(.5));
  // static TextStyle activeSectionText = GoogleFonts.mulish(
  //     fontWeight: FontWeight.bold, fontSize: 30, color: primaryColor);
  // static TextStyle normalSectionText = GoogleFonts.mulish(
  //     fontWeight: FontWeight.w600, fontSize: 30, color: secondaryColor);
  static TextStyle sideMenuBottomText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: secondaryColor.withOpacity(.5));
  static TextStyle adText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 15, color: secondaryColor);
  static TextStyle checkText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 12, color: secondaryColor);
  static TextStyle secondHeader = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 15, color: secondaryColor);
  static TextStyle seeAllText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 12, color: seeColor);
  static TextStyle rateText = GoogleFonts.jetBrainsMono(
      fontWeight: FontWeight.w500, fontSize: 12, color: secondaryColor);
  static TextStyle loremText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 12, color: secondaryColor);
  static TextStyle price = GoogleFonts.jetBrainsMono(
      fontWeight: FontWeight.w500, fontSize: 15, color: secondaryColor);
  static TextStyle addCartText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 12, color: secondaryColor);
  static TextStyle promoText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 15, color: secondaryColor);
  static TextStyle sidebarText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 15, color: secondaryColor);
}

class ConstantWeb {
  static TextStyle brandText = GoogleFonts.mina(
    textStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 40,
        foreground: Paint()
          ..shader = LinearGradient(
            colors: const <Color>[
              Color(0xFFFF6262),
              Color(0xFF4383FF),
            ],
          ).createShader(Rect.fromLTWH(0, 0, 200, 100))),
  );
  static TextStyle searchText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: secondaryColor.withOpacity(.5));
  static TextStyle activeSectionText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 30, color: primaryColor);
  static TextStyle normalSectionText = GoogleFonts.mulish(
      fontWeight: FontWeight.w600, fontSize: 30, color: secondaryColor);
  static TextStyle sideMenuBottomText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold,
      fontSize: 15,
      color: secondaryColor.withOpacity(.5));
  static TextStyle adText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 30, color: secondaryColor);
  static TextStyle checkText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 25, color: secondaryColor);
  static TextStyle secondHeader = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 30, color: secondaryColor);
  static TextStyle seeAllText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 25, color: seeColor);
  static TextStyle rateText = GoogleFonts.jetBrainsMono(
      fontWeight: FontWeight.w500, fontSize: 12, color: secondaryColor);
  static TextStyle loremText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 12, color: secondaryColor);
  static TextStyle price = GoogleFonts.jetBrainsMono(
      fontWeight: FontWeight.w500, fontSize: 20, color: secondaryColor);
  static TextStyle addCartText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 12, color: secondaryColor);
  static TextStyle promoText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 25, color: secondaryColor);
  static TextStyle sidebarText = GoogleFonts.mulish(
      fontWeight: FontWeight.bold, fontSize: 15, color: secondaryColor);
}
