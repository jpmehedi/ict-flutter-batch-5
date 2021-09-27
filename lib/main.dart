import 'package:flutter/material.dart';
import 'package:test_project/screen_one.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo Project",
      // theme: ThemeData(
      //   fontFamily: "Lobster" ,
      // ),
      // home: HomePage()
      // home: ProfileScreen(),
      // home: FullScreenDrawer(),
      home: ScreenOne()
    ),
  );
}

