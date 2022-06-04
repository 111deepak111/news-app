import 'package:flutter/material.dart';

class CityTile extends StatelessWidget{
  final String city;
  final IconData icon;
  final int temp;
  final String time;
 CityTile({
 required this.city,
 required this.icon,
  required this.temp,
  required this.time
 });

  @override
  Widget build(BuildContext context) {
    return Card();
  }

}