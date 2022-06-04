import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyColors{
  static var light = {
    'prim': const Color(0xff0d52e8),
    'bg': const Color(0xFF778AEC),
    'line': const Color(0xffffffff),
    'high': const Color(0xffff0000),
    'textPrim':const Color(0xff000000),
    'textSec':const Color(0xff939393),
  };
  static var dark = {
    'prim': const Color(0xff022379),
    'bg': const Color(0xFF5B5B65),
    'line': const Color(0xff000000),
    'high': const Color(0xffff0000),
    'textPrim':const Color(0xffffffff),
    'textSec':const Color(0xffb1b1b1),
  };
}

class MyFonts{
  static var prim = GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    color: MyColors.dark["textPrim"],
  );
}