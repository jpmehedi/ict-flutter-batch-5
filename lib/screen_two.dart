import 'package:flutter/material.dart';
import 'package:test_project/screen_three.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("ScreenTwo"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          }, 
          icon: Icon(Icons.arrow_back_ios)
        ),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (ctx)=> ScreenThree()));
              }, 
              child: Text("ScreenTwo")
            ),
            SizedBox(height:30,),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, 
              child: Text("Back")
            ),
          ],
        ),
      ),
    );
  }
}