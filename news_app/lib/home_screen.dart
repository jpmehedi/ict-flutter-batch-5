import 'package:flutter/material.dart';
import 'package:news_app/screens/all_news.dart';
import 'package:news_app/screens/business.dart';
import 'package:news_app/screens/gadgats.dart';
import 'package:news_app/screens/sports.dart';

class HomeScreen extends StatelessWidget {
  static const String path = "HomeScreen";
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffD3DEEA),
        appBar: AppBar(
          elevation: 10,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            "All News Paper",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: (){},
              icon: Icon(
                Icons.notification_important, 
              ),
            )
          ],
        ),
        drawer: Drawer(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                height: 32,
                margin: EdgeInsets.only(top: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: TabBar(
                        unselectedLabelColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorWeight: 4,
                        tabs: [
                          Text("All",style: tabTextColor(),),
                          Text("Business",style: tabTextColor(),),
                          Text("Gadgats",style: tabTextColor(),),
                          Text("Sports",style: tabTextColor(),)
                        ]
                      ),
                    ),
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    color: Colors.grey,
                    width: 1,
                    height: 20,
                  ),
                    GestureDetector(
                      onTap: (){},
                      child: Icon(
                          Icons.filter_list, 
                          size: 20,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    AllNews(),
                    Business(),
                    Gadgats(),
                    Sports()
                  ]
                ),
              ),
            ],
          ),
        )
      ),
    );
  }

  TextStyle tabTextColor() {
    return TextStyle(
      color: Colors.grey, 
      fontSize: 20
    );
  }
}

























      // bottom: PreferredSize(
          //   preferredSize: Size.fromHeight(20.0),
          //   child: Container(
          //     padding: const EdgeInsets.symmetric(horizontal: 20),
          //     color: Color(0xffD3DEEA),
          //     child: Row(
          //       mainAxisSize: MainAxisSize.min,
          //       children: [
          //         Expanded(
          //           child: TabBar(
          //             unselectedLabelColor: Colors.white,
          //             indicatorSize: TabBarIndicatorSize.tab,
          //             indicatorWeight: 2,
          //             tabs: [
          //               Text("All",style: tabTextColor(),),
          //               Text("Business",style: tabTextColor(),),
          //               Text("Gadgats",style: tabTextColor(),),
          //               Text("Sports",style: tabTextColor(),)
          //             ]
          //           ),
          //         ),
          //         Container(
          //           margin: EdgeInsets.only(right: 20),
          //           color: Colors.grey,
          //           width: 1,
          //           height: 20,
          //         ),
          //         GestureDetector(
          //           onTap: (){},
          //           child: Icon(
          //               Icons.filter_list, 
          //               size: 20,
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          // ),