import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home/taps/ahadeth_tap.dart';
import 'package:islami/home/taps/quran_tap.dart';
import 'package:islami/home/taps/radio_tap.dart';
import 'package:islami/home/taps/sebha_tap.dart';
import 'package:islami/home/taps/setings_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = "home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.fill),
      ),
      child: Scaffold(

        appBar: AppBar(
          title: Text(
            "ISLAMI",
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
        ),
        body: taps[index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,

          iconSize: 35,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Color(0xffB7935F),
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            index = value;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ic.quran.png")), label: ""),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ic.radio.png")), label: ""),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ic.sebha.png")), label: ""),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ic.ahadeth.png")), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          ],
        ),
      ),
    );
  }


  List<Widget> taps=[
    QuranTap(),
    RadioTap(),
    SebhaTap(),
    SettingsTap(),
    AhadethTap(),


  ];
}
