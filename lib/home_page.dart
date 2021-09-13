import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("I'm Rich", 
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
        body: Center(
          child: CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage("assets/poor_man.png"),
          ),
        ),
      );
  }
}
