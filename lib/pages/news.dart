import 'package:flutter/material.dart';

import 'ArticlePage.dart';

class NewsTile extends StatelessWidget {
  final String title;
  final String description;
  final String imgUrl;
  final String articleUrl;
  final String content;
  NewsTile(
      {required this.title,
        required this.description,
        required this.imgUrl,
        required this.articleUrl,
        required this.content
      });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromRGBO(0, 0, 0, 0.8),
      elevation: 5,
        child: ListTile(
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
          ),
          subtitle: Text(
            description,
            maxLines: 2,
            style: const TextStyle(color: Colors.white),
          ),
          leading: ClipRect(
              child: Image.network(
                imgUrl,
                width: 50,
                height: 100,
                fit: BoxFit.cover,
              )),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ArticleDetail(
                    title: this.title,
                    articleUrl: this.articleUrl,
                    imgUrl: this.imgUrl,
                    content: this.content,
                    description: this.description,
                  )),
            );
          },
        ),
    );
  }
}