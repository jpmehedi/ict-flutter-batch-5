import 'package:flutter/material.dart';
import 'package:test_project/screen_one.dart';
import 'package:test_project/screen_three.dart';
import 'package:test_project/screen_two.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo Project",
      initialRoute: ScreenOne.path,
      routes: {
        ScreenOne.path :(context)=> ScreenOne(),
        ScreenTwo.path :(context)=> ScreenTwo(),
        ScreenThree.path :(context)=> ScreenThree(),
      },
    ),
  );
}

