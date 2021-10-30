import 'package:flutter/material.dart';
import 'package:test_project/screen_one.dart';

class ScreenThree extends StatelessWidget {
  static final String path = "ScreenThree";
  const ScreenThree({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("ScreenThree"),
        leading: IconButton(
          onPressed: () {

          }, 
          icon: Icon(Icons.arrow_back_ios)
        ),
      ),
      body:Center(
        child: ElevatedButton(
          onPressed: (){
            // Navigator.pop(context);
            Navigator.pushNamedAndRemoveUntil(context, ScreenOne.path, (route) => false);
          }, 
          child: Text("Back")
        ),
      ),
    );
  }
}