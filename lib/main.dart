import 'package:flutter/material.dart';
import 'package:weather_app/pages/citythemes.dart';
import 'package:weather_app/pages/home.dart';
import 'package:weather_app/pages/homescreen.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
        "/":(context)=>const MyHome(),
          "/t":(context)=>const MyCity(),
          "/h":(context) => const HomeScreen()
        },
      initialRoute: "/",
    );
  }
}
