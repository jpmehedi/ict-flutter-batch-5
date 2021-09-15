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
        body: Container(
          color: Colors.pink,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.red,
                child: FlutterLogo(
                  size: 100,
                ),
              ),
              Container(
                // width: double.infinity,
                color: Colors.green,
                child: FlutterLogo(
                  size: 100,
                ),
              ),
              Container(
                color: Colors.orange,
                child: FlutterLogo(
                  size: 100,
                ),
              )
            ],
          ),
        ) 
    );
  }
}
