import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop/src/view/widget/app_colors.dart';

myStyle(double size, [Color? color, FontWeight? fw]) {
  return GoogleFonts.roboto(
    fontSize: size,
    color: color,
    fontWeight: fw,
  );
}
myStyles10() {
  return GoogleFonts.roboto(
    fontSize: 10,
    color: BrandColors.colorText,
  );
}

myStyles12() {
  return GoogleFonts.roboto(
    fontSize: 12,
    color:secondaryColor,
  );
}
myStyles14() {
  return GoogleFonts.roboto(
    fontSize: 14,
    color:secondaryColor,
  );
}

myStyles16() {
  return GoogleFonts.roboto(
    fontSize: 16,
    color: BrandColors.colorText,
    fontWeight: FontWeight.w400,
  );
}

myStyles18() {
  return GoogleFonts.roboto(
    fontSize: 18,
    color: secondaryColor,
    fontWeight: FontWeight.w700,
  );
}

myStyles20() {
  return GoogleFonts.roboto(
    fontSize: 20,
    color: secondaryColor,
    fontWeight: FontWeight.w700,
  );
}

