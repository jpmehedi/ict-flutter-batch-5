import 'package:flutter/material.dart';
import 'package:test_project/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(title: Text("ScreenOne"),),
      body:Center(
        child: ElevatedButton(
          onPressed: (){
            // Route route = MaterialPageRoute(builder: (context)=> ScreenTwo());

            // Route route = MaterialPageRoute(builder: (context){
            //   return ScreenTwo();
            // });

            Navigator.push(context, MaterialPageRoute(builder: (context)=> ScreenTwo()));
          }, 
          child: Text("ScreenOne")
        ),
      ),
    );
  }
}