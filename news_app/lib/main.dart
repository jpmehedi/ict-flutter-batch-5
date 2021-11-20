import 'package:flutter/material.dart';
import 'package:news_app/grid_view_screen.dart';
import 'package:news_app/home_screen.dart';
import 'package:news_app/screens/details.dart';

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
      initialRoute: GridViewScreen.path,
      routes: {
        GridViewScreen.path: (context)=> GridViewScreen(),
        HomeScreen.path : (context)=> HomeScreen(),
        DetailsScreen.path: (context)=> DetailsScreen(),
      },
    );
  }
}



//API_KEY = "4159422918ad47e1bca6d72a504c5da6"