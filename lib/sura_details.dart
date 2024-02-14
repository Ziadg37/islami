import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/modle/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "sura";

   SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
List<String> verses=[];

  @override
  Widget build(BuildContext context) {
    var modle = ModalRoute
        .of(context)!
        .settings
        .arguments as SuraModel;

    if(verses.isEmpty) {
      loadfile(modle.index);
    }


    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),
      child: Scaffold(

        appBar: AppBar(

          title: Text(modle.name),
        ),

        body: Card(
          margin: EdgeInsets.all(12),
          elevation: 12,
          color: Colors.white.withOpacity(.7),
          shape: OutlineInputBorder(

            borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide(color: Colors.transparent)

          ),
          child: ListView.separated(

            separatorBuilder: (context,index)=>SizedBox(
              height: 12,
            ),
            itemBuilder: (context,index){

            return Text(verses[index],textAlign: TextAlign.center,style: GoogleFonts.elMessiri(
              fontSize: 20,letterSpacing: .5,



            ),);



          },
          itemCount: verses.length,

          ),
        ),

      ),

    );



  }

  Future<void> loadfile(int index)async{

    String sura = await rootBundle.loadString("assets/files/${index+1}.txt");

    List<String> liles=sura.split("\n") ;
verses=liles;
//print(liles);
setState(() {

});
  }
}
