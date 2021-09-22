import 'package:flutter/material.dart';

class DayTen extends StatelessWidget {
  const DayTen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView & ListTile"),),

      body: ListView.builder(
        // separatorBuilder: (BuildContext context, int index) {
        //   return Divider(
        //     thickness: 1,
        //     color: Colors.red,
        //     height: 0,
        //   );
        // },
        itemCount: 5,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            onTap: (){},
            tileColor: Colors.teal,
            leading: CircleAvatar(
              child: Icon(Icons.phone),
            ),
            title: Text("+018214245215"),
            subtitle: Text("Flutter Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        }
      ),
    );
  }
}