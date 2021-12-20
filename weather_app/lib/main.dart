import 'package:flutter/material.dart';
import 'package:weather_app/screens/details.dart';
import 'package:weather_app/screens/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomePage.path,
      routes: {
        HomePage.path: (ctx)=> HomePage(),
        DetailsScreen.path: (ctx)=> DetailsScreen()
      },
    );
  }
}

