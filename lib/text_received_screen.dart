import 'package:flutter/material.dart';

class TextReceivedScreen extends StatelessWidget {

  final String? name;
  final String? email;

  TextReceivedScreen({this.name, this.email});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text Received Screen"),),
      body: Center(
        child: Column(
          children: [
            Text("$name"),
            Text("$email")
          ],
        ),
      ),
    );
  }
}