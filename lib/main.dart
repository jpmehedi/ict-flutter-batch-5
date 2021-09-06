import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo Project",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Demo Application", 
            style: TextStyle(
              // color: Color(0xffFF0000),
              color: Colors.red,
              fontSize: 28,
              // fontWeight: FontWeight.w700,
              fontWeight: FontWeight.bold,
              letterSpacing: 5.0,
              fontStyle: FontStyle.italic,
              fontFamily: "Arial"
            ),
          ),
        ),
      )
    )
  );
}