import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleDetail extends StatelessWidget {
  final String title;
  final String description;
  final String imgUrl;
  final String articleUrl;
  final String content;

  ArticleDetail(
      {required this.title,
        required this.description,
        required this.imgUrl,
        required this.articleUrl,
        required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
          title,
          textScaleFactor: 1.25,
          style: TextStyle(
              fontFamily: GoogleFonts.poppins().fontFamily,
              color:Colors.white,
              fontWeight: FontWeight.w900
          ),
        ),
        backgroundColor: Colors.black87,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black26,
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              this.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRect(
                child: Image.network(
                  this.imgUrl,
                  // width: double.infinity,
                  // height: 100,
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              this.description,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              this.content,
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 10,
            ),
            Material(
                child:InkWell(
                    onTap: () async {
                      if (!await launch(articleUrl)) throw 'Could not launch';
                    },
                    child: Container(
                      color: Color.fromRGBO(0, 0, 0, 0.8),
                      padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                      child: const Text("Read full article",textScaleFactor: 1.25,style: TextStyle(color: Colors.white),),
                    )
                )
            )
          ],
        ),
      ),
    );
  }
}
