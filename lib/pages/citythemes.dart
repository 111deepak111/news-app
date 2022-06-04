import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:weather_app/themes/themes.dart';
import 'package:weather_app/widgets/widgets.dart';

class MyCity extends StatefulWidget{
  const MyCity({Key? key}) : super(key: key);

  @override
  State<MyCity> createState() => _MyCityState();
}

class _MyCityState extends State<MyCity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFF37055C),
      // appBar:MyAppBar("Bangalore"),
      // drawer: const MyDrawer(),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset("assets/images/Asset-1-final.png",fit: BoxFit.fill,),
          ),
          Center(
            child:Container(
              color: const Color.fromRGBO(0, 0, 0,0.5),
              width: MediaQuery.of(context).size.width,
              child: const Text(
              "Abracadabra",
              style: TextStyle(color: Colors.white),
              textScaleFactor: 4,
                textAlign: TextAlign.center,
            ),
            )
          )
        ],
      )
    );
  }

  Container _buildContainer(String heading,Color col, String str, IconData icon){
    return Container(
      width: 150,
      height: 100,
      padding: const EdgeInsets.all(4),
      color: col,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            heading,
            textScaleFactor: 0.9,
            style: TextStyle(
              color: MyColors.dark["textPrim"]
            ),
          ),
          Text(
            str,
            textScaleFactor: 1.3,
            style: TextStyle(
                color: MyColors.dark["textPrim"]
            ),
          ),
          Icon(
            icon,
            size: 20,
            color: MyColors.dark["textPrim"],
          ),
        ],
      )
    );
  }
}