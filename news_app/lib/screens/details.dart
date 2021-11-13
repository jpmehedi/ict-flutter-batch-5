import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  static const String path = "DetailsScreen";

  @override
  Widget build(BuildContext context) {
    final Map newsData = ModalRoute.of(context)!.settings.arguments as Map;
    print(newsData);
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("News Details"),
      ),
      body: Column(
        children: [
         Text(newsData["title"]) ,
         Hero(
           tag: "${newsData["title"]}",
           child: Image.network(
             newsData["urlToImage"],
             width: double.infinity,
             height: 300,
          )
        ),
         Row(
           children: [
             Text("Author: ${newsData["author"]}"),
             Text("Date: ${newsData["publishedAt"]}")
           ],
         ),
         Text(newsData["description"])
        ],
      ),
    );
  }
}