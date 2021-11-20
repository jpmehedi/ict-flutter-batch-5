import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/functions.dart';
import 'package:news_app/screens/details.dart';
class AllNews extends StatefulWidget {
  const AllNews({ Key? key }) : super(key: key);

  @override
  _AllNewsState createState() => _AllNewsState();
}

class _AllNewsState extends State<AllNews> {
  List allNewsData  = [];
  final String  url = "https://newsapi.org/v2/everything?q=tesla&from=2021-10-20&sortBy=publishedAt&apiKey=4159422918ad47e1bca6d72a504c5da6";
  Future getAllNews()async{
    final response = await http.get(Uri.parse(url));
    Map _allNewsData = {};
    if(response.statusCode == 200) {
      setState(() {
        _allNewsData = jsonDecode(response.body);
        allNewsData = _allNewsData["articles"];
      });
    }
  }


  @override
  void initState() {
    getAllNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        shrinkWrap: true,
        separatorBuilder:  (BuildContext context, int index){
          return Divider(
            thickness: 10,
            color: Color(0xffD3DEEA),
            height: 0,
          );
        },
        itemCount: allNewsData.length,
        itemBuilder: (BuildContext context, int index){
          return SizedBox(
            height: 150,
            child: ListTile(
              onTap: (){
                Navigator.pushNamed(context, DetailsScreen.path, arguments: allNewsData[index]);
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              isThreeLine: true,
              title: Text(allNewsData[index]['title']),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(Functions.getAuthor(allNewsData[index])),
                  Text(Functions.getDateTime(allNewsData[index]["publishedAt"])),
                ],
              ),

              trailing: allNewsData[index]["urlToImage"] != null 
              ? Container(
                child: Hero(
                  tag: "${allNewsData[index]['title']}",
                  child: Image.network(
                    Functions.getImage(allNewsData[index]["urlToImage"]),
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              )
              : Container(
                width: 100,
                height: 100,
                color: Colors.grey,
              ),
            ),
          );
        }
      ),
    );
  }
}


