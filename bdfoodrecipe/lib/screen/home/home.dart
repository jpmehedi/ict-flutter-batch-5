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
          backgroundColor: Colors.orange,
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
            TabBar(
              unselectedLabelColor: Colors.redAccent,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.redAccent, Colors.orangeAccent]
                    ),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent,
                    
              ),
              tabs: [
                Tab(child: Text("Rice",)),
                Tab(child: Text("Desert")),
                Tab(child: Text("Bread")),
                Tab(child: Text("FastFood")),
                Tab(child: Text("Non-Veg")),
              ]
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