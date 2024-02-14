import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/hadeth_details.dart';

import '../../modle/hadeth_modle.dart';

class AhadethTap extends StatefulWidget {
  AhadethTap({super.key});

  @override
  State<AhadethTap> createState() => _AhadethTapState();
}

class _AhadethTapState extends State<AhadethTap> {
  List<HadethModel> hadethData = [];

  @override
  Widget build(BuildContext context) {
    if (hadethData.isEmpty) {
      loadhadethFile();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/ahadeth.png",
          width: double.infinity,
        ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Text(
          "Ahadeth",
          style:
              GoogleFonts.elMessiri(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) =>
                Divider(color: Color(0xffB7935F),endIndent: 40, indent: 40,thickness:1),
            itemBuilder: (context, index) {



              return InkWell(
                onTap: (){
                  
                  Navigator.pushNamed(context, HadethDetails.routeName,arguments: hadethData[index]);

                },

                child:Text(
                hadethData[index].title,
                textAlign: TextAlign.center,
                style: GoogleFonts.elMessiri(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),

              );
            },
            itemCount: hadethData.length,
          ),
        )
      ],
    );
  }

  loadhadethFile() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((hadethFile) {
      List<String> ahadeth = hadethFile.split("#");
      for (int i = 0; i < ahadeth.length; i++) {
        String hadeth = ahadeth[i];
        List<String> hadethLine = hadeth.trim().split("\n");
        String title = hadethLine[0];
        hadethLine.removeAt(0);
        List<String> hadethContent = hadethLine;
        print(title);
        hadethData.add(HadethModel(title: title, content: hadethContent));
      }
      setState(() {});
    });
  }
}
