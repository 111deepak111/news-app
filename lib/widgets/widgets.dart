import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:weather_app/themes/themes.dart';

class MyDrawer extends StatefulWidget{
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
    backgroundColor: MyColors.dark["prim"],
    child:SafeArea(
      child:Column(
          children:[
            _rowBuilder("Bangalore",24),
            _rowBuilder("Chennai", 18),
            Icon(
              CupertinoIcons.plus,
              color: MyColors.dark["textPrim"],
            )
          ]
        )
      )
    );
  }

  Container _rowBuilder(String city,int temp){
    return Container(
      height: 50,
      padding: EdgeInsets.all(0),
        margin: EdgeInsets.all(0),
        child:Material(
          color: MyColors.dark["prim"],
            child:InkWell(
              onTap: (){},
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                      child:Text(
                        city,
                        textScaleFactor: 1.2,
                        style: TextStyle(color: MyColors.dark["textSec"]),
                      )
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 20),
                    child:Text(
                      "$temp",
                      textScaleFactor: 1.8,
                      style: TextStyle(color: MyColors.dark["textPrim"]),
                    )
                  )
                ],
              )
          )
        )
    );
  }
}

AppBar MyAppBar(String head){
  return AppBar(
    title: Text(
      head,
      textScaleFactor: 1.6,
      style: MyFonts.prim,),
    backgroundColor: Colors.transparent,
  );
}