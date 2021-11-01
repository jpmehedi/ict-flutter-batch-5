import 'package:flutter/material.dart';
import 'package:test_project/account.dart';
import 'package:test_project/screen_one.dart';
import 'package:test_project/screen_three.dart';
import 'package:test_project/screen_two.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo Project",
      initialRoute: AccountScreen.path,
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


      routes: {
        AccountScreen.path :(context)=> AccountScreen(),
        ScreenOne.path :(context)=> ScreenOne(),
        ScreenTwo.path :(context)=> ScreenTwo(),
        ScreenThree.path :(context)=> ScreenThree(),
      },
    ),
  );
}

