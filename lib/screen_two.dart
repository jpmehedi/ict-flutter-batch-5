import 'package:flutter/material.dart';
import 'package:test_project/screen_three.dart';

class ScreenTwo extends StatelessWidget {
   static final String path = "ScreenTwo";
  const ScreenTwo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final List data = ModalRoute.of(context)!.settings.arguments as List;
      final Map data = ModalRoute.of(context)!.settings.arguments as Map;
      print(data);
    return Scaffold(

      appBar: AppBar(
        title: Text("ScreenTwo"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {

          }, 
          icon: Icon(Icons.arrow_back_ios)
        ),
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name: ${data["name"]} Age: ${data["age"]}"),
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, ScreenThree.path);
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