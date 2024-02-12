import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData{

  static  ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.black,




  ),
  appBarTheme: AppBarTheme(
  backgroundColor: Colors.transparent,
  centerTitle: true,
  iconTheme: IconThemeData(

  color: Colors.black,
  size: 30,

  ),
  titleTextStyle: GoogleFonts.elMessiri(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  color: Colors.black,),
  ),
  );









  static  ThemeData darkTheme=ThemeData(


  );










}