import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> selectedWidget =[
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.green,
    ),
    Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.pink,
    )
  ];

  // void changeItem(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomNavBar"),),
      body: selectedWidget.elementAt(selectedIndex),
      
      bottomNavigationBar: BottomNavigationBar(
        
        items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"
            ),  
            
        ],
        currentIndex: selectedIndex,
        onTap: (int index){
          setState(() {
           selectedIndex = index;
          });
        },


        // onTap: changeItem,
      ),
    );
  }
}