import 'package:flutter/material.dart';
import 'package:test_project/responsive_screen.dart';
import 'package:test_project/screen_one.dart';
import 'package:test_project/screen_three.dart';
import 'package:test_project/screen_two.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo Project",
   
      theme: ThemeData(
        primaryColor: Colors.orange,
        fontFamily: "Lobster",
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.pink
        ),
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.green, fontSize: 28),
          headline6: TextStyle(color: Colors.green, fontSize: 12),
          bodyText1: TextStyle(color: Colors.pink, fontSize: 20)
        ),
      
        iconTheme: IconThemeData(
          color: Colors.grey
        ),
        buttonColor: Colors.yellow

      ),

      darkTheme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: "Lobster",
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(color: Colors.white, fontSize: 28),
          headline6: TextStyle(color: Colors.white, fontSize: 12),
          bodyText1: TextStyle(color: Colors.white, fontSize: 20)
        ),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.black
        ),
        buttonColor: Colors.yellow
      ),

      themeMode: ThemeMode.light,

      initialRoute: ScreenOne.path,
      routes: {
        RespoonsiveScreen.path :(context)=> RespoonsiveScreen(),
        ScreenOne.path :(context)=> ScreenOne(),
        ScreenTwo.path :(context)=> ScreenTwo(),
        ScreenThree.path :(context)=> ScreenThree(),
      },
    ),
  );
}

