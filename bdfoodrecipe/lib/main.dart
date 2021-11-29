import 'package:bdfoodrecipe/screen/details/detail.dart';
import 'package:flutter/material.dart';

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
      initialRoute: Details.path,
      routes: {
        // HomeScreen.path: (ctx)=> HomeScreen(),
        Details.path: (ctx)=>Details(),
      },
    );
  }
}

