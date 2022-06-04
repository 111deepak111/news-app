import 'package:flutter/material.dart';
import 'package:weather_app/themes/themes.dart';
import 'package:weather_app/weatherapi/api.dart';
import 'package:weather_app/widgets/widgets.dart';

class MyHome extends StatefulWidget{
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  late Future<List<dynamic>> _weathermodel;
  @override
  void initState(){
  _weathermodel =getWeather();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark["prim"],
      appBar: MyAppBar("Bangalore"),
      drawer: const MyDrawer(),
      body: Container(
        child: (_weathermodel != [])?Column(
          children: [
            Text("$_weathermodel[3]",
          style: TextStyle(color: Colors.white),)
          ],
        ):const Center(
          child: CircularProgressIndicator(),
        ),
        padding: const EdgeInsets.all(8),
      )
    );
  }
}