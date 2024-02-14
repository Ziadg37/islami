import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/modle/hadeth_modle.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName="Hadeth";
  const HadethDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model=ModalRoute.of(context)!.settings.arguments as HadethModel;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.fill)),

      child: Scaffold(
        appBar: AppBar(
          title: Text("${model.title}"),

        ),

        body: Container(
          padding: EdgeInsets.only(top: 65),
          child: Center(

            child: Card(
              margin: EdgeInsets.all(12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListView.builder(itemBuilder: (context,index){

                return Text(model.content[index],textAlign: TextAlign.center,style: TextStyle(fontSize: 30),);

              },
              itemCount: model.content.length,

              ),
            ),
          ),
        ),




      ),
    );
  }
}
