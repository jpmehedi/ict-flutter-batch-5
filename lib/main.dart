import 'package:flutter/material.dart';
import 'package:test_project/news_app.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NewsAppScreen.path,
      routes: {
        NewsAppScreen.path :(context)=> NewsAppScreen(),
      },
    ),
  );
}

