import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                       radius: 28,
                       backgroundImage: AssetImage(    
                       "assets/image/afsar.jpg"),
                         ), 
                      Padding(
                        padding: const EdgeInsets.only(left:10,top: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1),
                              child: Row(
                                
                                children: [
                                  
                                  Text("Afsar Hossen",textAlign: TextAlign.left,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                 SizedBox(width: 10,),
                                  Icon(Icons.create,size: 15,color: Colors.greenAccent,),
                                ],
                              ),
                            ), 
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text("imshuvo97@gmail.com",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey
                                ),
                              ),
                            ), 
                          ],
                        ),
                      ),  
                    ],      
                  ),
                ),
              ),
              SizedBox(height: 30),
              Divider(thickness: 0.5, color: Colors.grey, height: 0),
              ListTile(
                onTap: (){},
                trailing: Icon(Icons.arrow_forward_ios),
                leading: Icon(Icons.shopping_bag_rounded),
                title: Text(
                  "Orders",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18
                  ),
                ),
                      
              ),
              Divider(thickness: 0.5, color: Colors.grey, height: 0,),
              ListTile(
                onTap: (){},
                trailing: Icon(Icons.arrow_forward_ios),
                leading: Icon(Icons.details_sharp),
                title: Text(
                 "My Details",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18),
                ),
              ),
              Divider(thickness: 0.5, color: Colors.grey, height: 0,),
              ListTile(
                onTap: (){},
                trailing: Icon(Icons.arrow_forward_ios),
                leading: Icon(Icons.location_pin),
                title: Text(
                  "Delivery Address",
                  style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18 ),
                ),
              ),
              Divider(thickness: 0.5, color: Colors.grey, height: 0,),
              ListTile(
                onTap: (){},
                trailing: Icon(Icons.arrow_forward_ios),
                leading: Icon(Icons.payments),
                title: Text(
                  "Payment Methods",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18
                  ),
                ),
              ),
              Divider(thickness: 0.5, color: Colors.grey, height: 0,),
                ListTile(
                  onTap: (){},
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.panorama_rounded),
                  title: Text(
                  "Promo Cord",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18
                  ),
                ),
              ),
              Divider(thickness: 0.5, color: Colors.grey, height: 0,),
              ListTile(
                onTap: (){},
                trailing: Icon(Icons.arrow_forward_ios),
                leading: Icon(Icons.notifications),
                title: Text(
                  "Notifications",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18 ),
                ),
              ),
              Divider(thickness: 0.5, color: Colors.grey, height: 0,),
              ListTile(
                onTap: (){},
                trailing: Icon(Icons.arrow_forward_ios),
                leading: Icon(Icons.help),
                title: Text(
                  "Help",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18
                  ),
                ),
              ),
              Divider(thickness: 0.5, color: Colors.grey, height: 0,),
              ListTile(
                onTap: (){},
                trailing: Icon(Icons.arrow_forward_ios),
                leading: Icon(Icons.adb_outlined),
                  title: Text(
                    "About",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                    ),
                  ),
              ),
              Divider(thickness: 0.5, color: Colors.grey, height: 0,),
              SizedBox(height: 30,),
              Container(
                height: 67,
                width: 364,
                // color: Colors.grey,
                decoration: BoxDecoration(                                            
                  borderRadius: BorderRadius.circular(6),            
                  boxShadow: [                                                               
                      BoxShadow(color: Colors.grey,  ),       
                  ],                                                                       
                ),  
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.exit_to_app,color: Colors.green,),
                      SizedBox(width: 114,),
                      Text(
                        "Log Out",
                        style: TextStyle(
                          fontSize: 18, 
                          fontWeight: FontWeight.w600,color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ), 
              SizedBox(height: 20,),
                         
            ], 
            
          ),
          
        ),
        
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
               color: Colors.black38,spreadRadius: 0,blurRadius: 10),
            ],
          ),
          child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child:BottomNavigationBar(
          currentIndex: 4,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyle(color: Colors.green),
          unselectedLabelStyle: TextStyle(color: Colors.black),
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon:Icon(Icons.store_rounded) ,
              label:"Shop" ),
              BottomNavigationBarItem(
              icon:Icon(Icons.travel_explore_outlined) ,
              label:"explore" ),
              BottomNavigationBarItem(
              icon:Icon(Icons.shopping_cart) ,
              label:"Cart" ),
              BottomNavigationBarItem(
              icon:Icon(Icons.favorite_border) ,
              label:"Favourite" ),
              BottomNavigationBarItem(
              icon:Icon(Icons.shop_two_sharp) ,
              label:"Account" 
            ),
          ],
        ), 
          ),
        ),
      ),
    );
  }
}