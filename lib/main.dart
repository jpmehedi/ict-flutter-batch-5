import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Demo Project",
      theme: ThemeData(
        fontFamily: "Lobster" ,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("I'm Poor", 
            style: TextStyle(
              // color: Color(0xffFF0000),
              // color: Colors.green,
              fontSize: 28,
              // fontWeight: FontWeight.w700,
              fontWeight: FontWeight.bold,
              letterSpacing: 5.0,
              fontStyle: FontStyle.italic,
           ), 
          ),
          
        ),

        // body: Center(
        //   child: Image.asset(
        //     "assets/poor_man.png",
        //     width: 200,
        //     height: 200,
        //   ),
        // ),

        // body: Center(
        //   child: Image.network(
        //     "https://picsum.photos/250?image=9",
        //     width: 100,
        //     height: 100,
        //   ),
        // ),

        // body: Center(
        //   child: CircleAvatar(
        //     radius: 80,
        //     backgroundImage: NetworkImage("https://picsum.photos/250?image=9"),
        //   ),
        // ), 
        body: Center(
          child: CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage("assets/poor_man.png"),
          ),
        ),
      ),
    ),
  );
}