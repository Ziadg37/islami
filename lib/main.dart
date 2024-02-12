import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/home_scr.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/sura_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "islami",
      initialRoute: HomeScreen.routename,
      theme:MyThemeData.lightTheme ,
      darkTheme: MyThemeData.darkTheme,
      routes: {
        HomeScreen.routename: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen()
      },
    );
  }
}
