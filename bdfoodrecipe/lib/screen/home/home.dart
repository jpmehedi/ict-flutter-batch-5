import 'package:bdfoodrecipe/screen/bread/bread.dart';
import 'package:bdfoodrecipe/screen/desert/desert.dart';
import 'package:bdfoodrecipe/screen/fast_food/fast_food.dart';
import 'package:bdfoodrecipe/screen/non_veg/non_veg.dart';
import 'package:bdfoodrecipe/screen/rice/rice.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String path = "HomeScreen";
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text("Bd Food Recipes".toUpperCase()),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.favorite)
            )
          ],
        ),
        drawer: Drawer(),
        body: Column(
          children: [
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(horizontal: 10),
                indicatorWeight: 1.0,
                indicatorColor: Colors.orange,
                labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, fontFamily: "Gilroy"),
                unselectedLabelColor: Colors.red,
                labelColor: Colors.white,
                indicator: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(4.0)
                ),
                tabs: [
                  Tab(child: Text("Rice",)),
                  Tab(child: Text("Desert")),
                  Tab(child: Text("Bread")),
                  Tab(child: Text("Fast-Food")),
                  Tab(child: Text("Non-Veg")),
                ]
              ),
            ),
    
            Expanded(
              child: TabBarView(
                children: [
                  Rice(),
                  Desert(),
                  Bread(),
                  FastFood(),
                  NonVeg()
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}