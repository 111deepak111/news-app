import 'dart:convert';
import 'package:http/http.dart' as http;

// class WeatherAPI{
//   Future<dynamic> getWeather()async{
//     var weathermodel;
//     var clients = http.Client();
//    try{
//      var url = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=belgaum&appid=4d09cd0e0c359927e26a1df8e5a0de90");
//      var response = await clients.get(url);
//       if (response.statusCode == 200) {
//         var jsonString = response.body;
//         var jsonMap = json.decode(jsonString);
//         weathermodel = [jsonMap["coord"], jsonMap["weather"],jsonMap["main"],jsonMap["name"]];
//         print (weathermodel);
//         return weathermodel;
//       }
//     }
//     catch(Exception){
//      return weathermodel;
//    }
//    return weathermodel;
//   }
// }

Future<List<dynamic>> getWeather() async {
  var weathermodel;
  var clients = http.Client();
  try{
    var url = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=belgaum&appid=4d09cd0e0c359927e26a1df8e5a0de90");
    var response = await clients.get(url);
    print(response);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var jsonMap = json.decode(jsonString);
      weathermodel = [jsonMap["coord"], jsonMap["weather"],jsonMap["main"],jsonMap["name"]];
      print (weathermodel);
      return weathermodel;
    }
  }
  catch(Exception){
    weathermodel = [];
    return weathermodel;
  }
  return weathermodel;
}