import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:news_app/functions.dart';
class DetailsScreen extends StatefulWidget {
  static const String path = "DetailsScreen";

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final Map newsData = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("News Details", style: TextStyle(color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
           Text(
             newsData["title"],
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.w700
             ),
          ),
           Hero(
             tag: "${newsData["title"]}",
             child: Image.network(
               Functions.getImage(newsData["urlToImage"]),
               width: double.infinity,
               height: 300,
            )
          ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text("Author: ${newsData["author"]}"),
               Text("Date: ${Functions.getDateTime(newsData["publishedAt"])}")
              //  Text("Date: ${newsData["publishedAt"]}")
             ],
           ),
           SizedBox(height: 16,),
           RichText(
             text: TextSpan(
               children: [
                 TextSpan(
                    text: newsData["description"],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),
                  ),
                  TextSpan(
                    text: "[more details]",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.blue
                    ),
                    recognizer: TapGestureRecognizer()..onTap= (){
                      Functions.launchUrl(newsData['url']);
                    }
                  ),
               ]
             )
           )
          ],
        ),
      ),
    );
  }
}

