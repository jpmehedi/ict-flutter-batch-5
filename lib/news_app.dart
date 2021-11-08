import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsAppScreen extends StatefulWidget {
  static final String  path = "NewsAppScreen";
  const NewsAppScreen({ Key? key }) : super(key: key);

  @override
  _NewsAppScreenState createState() => _NewsAppScreenState();
}

class _NewsAppScreenState extends State<NewsAppScreen> {




  final String url = "https://jsonplaceholder.typicode.com/posts";

  final String title = "Lorem Ipsum is simply dummy text of the printing and typesetting industry";

  final String description = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";

  List posts = [];

  Future getPost() async{
    final response = await http.get(Uri.parse(url));

    if(response.statusCode == 200 ) {
      setState(() {
        posts = jsonDecode(response.body);
      });
    }
    
  }


  @override
  void initState() {
    getPost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     print(posts);
    return Scaffold(
      appBar: AppBar(title: Text("Blog"),),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
            elevation: 10,
            child: ListTile(
              title: Text(posts[index]["title"]),
              subtitle: Text(posts[index]["body"]),
            ),
          );
        },
      ),
    );
  }
}