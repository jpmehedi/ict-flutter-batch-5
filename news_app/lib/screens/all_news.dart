import 'package:flutter/material.dart';

class AllNews extends StatelessWidget {
  const AllNews({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orange,
      body: ListView.separated(
        separatorBuilder:  (BuildContext context, int index){
          return Divider(
            thickness: 10,
            color: Color(0xffD3DEEA),
            height: 0,
          );
        },
        itemCount: 12,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            title: Text("This is title"),
            subtitle: Text("This is subtitle"),
            trailing: Image.network("https://picsum.photos/250?image=9"),
          );
        }
      ),
    );
  }
}