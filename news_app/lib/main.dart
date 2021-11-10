import 'package:flutter/material.dart';
import 'package:news_app/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      initialRoute: HomeScreen.path,
      routes: {
        HomeScreen.path : (context)=> HomeScreen(),
      },
    );
  }
}



//API_KEY = "4159422918ad47e1bca6d72a504c5da6"