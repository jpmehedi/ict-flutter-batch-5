import 'package:flutter/material.dart';
import 'package:test_project/screen_two.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenOne extends StatelessWidget {
  static final String path = "ScreenOne";
  final String name = "Mehedi";
  final int age = 25;

  final List<Map<String, dynamic>> profile = <Map<String, dynamic>>[
    {
      "id": 01,
      "name": "Mehedi Hasan",
      "email": "mehedi@genex.com",
      "phone": "01790180825"
    },
    {
      "id": 02,
      "name": "Rasel Ahmed",
      "email": "mehedi@augnitive.com",
      "phone": "01835243652"
    },
    {
      "id": 03,
      "name": "Nusrat Jahan",
      "email": "nusrat@gmail.com",
      "phone": "01428293256"
    },

  ];

  // final String url = "flutter";
  
  Future launchUrl(String url) async{
    if(await canLaunch(url)) {
      return launch(url);
    }else {
      print("Not valid $url");
    }
  }

  Future launchEmail(String email, String sub, String body) async{
    if(await canLaunch("mailto: $email?subject=$sub&body=$body")) {
      return launch("mailto: $email?subject=$sub&body=$body");
    }else {
      print("Not valid $email");
    }
  }

  Future launchPhone(String phone) async{
    if(await canLaunch("tel:$phone")) {
      return launch("tel:$phone");
    }else {
      print("Not valid $phone");
    }
  }
    Future launchSMS(String sms) async{
    if(await canLaunch("sms:$sms")) {
      return launch("sms:$sms");
    }else {
      print("Not valid $sms");
    }
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(title: Text("ScreenOne"),),
      body: Column(
        children: [
          Text(
            "The quick brown fox jumps over the lazy dog",
            style: Theme.of(context).textTheme.bodyText1
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Theme.of(context).buttonColor
              ),
              onPressed: (){
                // Navigator.pushNamed(context, ScreenTwo.path, arguments:[name, age]);
                Navigator.pushNamed(context, ScreenTwo.path, arguments: {"name": name, "age": age});
              }, 
              child: Text("ScreenOne")
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // launchUrl("https://flutter.dev");
         launchSMS("Hello Dear");
          // launchEmail("mehedi@genex.com", "Subject", "Hello Dear");
          // launchPhone("01790180825");
        },
        foregroundColor: Theme.of(context).iconTheme.color,
        child: Icon(Icons.add,),
      ),
    );
  }
}