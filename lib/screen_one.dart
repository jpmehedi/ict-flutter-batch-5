import 'package:flutter/material.dart';
import 'package:test_project/screen_two.dart';

class ScreenOne extends StatelessWidget {
  static final String path = "ScreenOne";
  const ScreenOne({ Key? key }) : super(key: key);
  final String name = "Mehedi";
  final int age = 25;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(title: Text("ScreenOne"),),
      body:Center(
        child: ElevatedButton(
          onPressed: (){
            // Navigator.pushNamed(context, ScreenTwo.path, arguments:[name, age]);
            Navigator.pushNamed(context, ScreenTwo.path, arguments: {"name": name, "age": age});
          }, 
          child: Text("ScreenOne")
        ),
      ),
    );
  }
}