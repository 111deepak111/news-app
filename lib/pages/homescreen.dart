import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loading = true;
  List<Map<String, dynamic>> articles = [];

  Future<void> getNews() async {
    String url =
        'http://newsapi.org/v2/top-headlines?country=us&excludeDomains=stackoverflow.com&sortBy=publishedAt&language=en&apiKey=805e3a6c1b404db5a481418ec3cffbbb';
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null &&
            element['description'] != null &&
            element['content'] != null) {
          articles.add(element);
        }
      });
    }
    setState(() {
      loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        "News App",
        textScaleFactor: 1.25,
        style: TextStyle(
            fontFamily: GoogleFonts.poppins().fontFamily,
          color:Colors.white,
            fontWeight: FontWeight.w900
        ),
      ),
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.8),
      )
    ,
      body: SingleChildScrollView(
        child:Container(
            color: Colors.black26,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Latest News from All Over the World!",
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.4,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ListView.builder(
                  itemCount: articles.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                        padding: const EdgeInsets.all(8.0),
                        child: NewsTile(
                          articleUrl: articles[index]['url'],
                          title: articles[index]['title'],
                          description: articles[index]['description'],
                          imgUrl: articles[index]['urlToImage'] ?? "https://upload.wikimedia.org/wikipedia/commons/a/ac/No_image_available.svg", content: '',
                        ));
                  },
                )
              ],
            ),
          ),
        )
    );
  }
}