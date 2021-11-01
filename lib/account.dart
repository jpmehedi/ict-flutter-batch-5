import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  static final String path = "AccountScreen";
  const AccountScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ashfdasjfnasjdm"),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Icon(Icons.person),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left:0, bottom: 20 ),
              child: Text("asjdnjasnfjasnf"),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("asjdnasjfn"),
                subtitle: Text(":asdnasd"),
                trailing: Icon(Icons.settings),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("asjdnasjfn"),
                subtitle: Text(":asdnasd"),
                trailing: Icon(Icons.settings),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("asjdnasjfn"),
                subtitle: Text(":asdnasd"),
                trailing: Icon(Icons.settings),
              ),
            ),
             Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("asjdnasjfn"),
                subtitle: Text(":asdnasd"),
                trailing: Icon(Icons.settings),
              ),
            )
          ],
        ),
      ),
    );
  }
}