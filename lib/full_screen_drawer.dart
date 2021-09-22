import 'package:flutter/material.dart';

class FullScreenDrawer extends StatefulWidget {
  const FullScreenDrawer({ Key? key }) : super(key: key);

  @override
  _FullScreenDrawerState createState() => _FullScreenDrawerState();
}

class _FullScreenDrawerState extends State<FullScreenDrawer> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Full Screen Drawer"),),
      drawer: GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(
          width: MediaQuery.of(context).size.width, // This is main techniq for full screen drawer
          child: Drawer(
          child: ListView( // Not mendatory for full screen drawer
            padding: EdgeInsets.zero,
            children: [
             DrawerHeader(child: Text("Header")), // Not mendatory for full screen drawer
             ListTile( title: Text("Home")) // Dummy ListTile
            ],
           ),
          ),
        ),
      ), 
    );
  }
}