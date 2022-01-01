import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:test_me/utils/app_color.dart';
import 'package:test_me/widgets/custom_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  List user  = [];
 Future getUser()async{
    CollectionReference instance = await FirebaseFirestore.instance.collection('users');

    instance.get().then((QuerySnapshot querySnapshot) {
        setState(() {
          user = querySnapshot.docs;
        });
    });
  }

 Widget getAvatar(image){
   print('asas ${image.runtimeType}]');
    if(image != null) {
      return CircleAvatar(
      radius: 18,
      backgroundImage:  NetworkImage(image),
     );
    }else{
      return CircleAvatar(
        radius: 18,
        backgroundImage:  AssetImage("assets/image/profile.jpg"),
      );
    }
  }

  @override
  void initState() {
    getUser();
    super.initState();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text(
          "User List",
          style: TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.w500,
            color: AppColor.secondaryColor
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.person),
                    Text(
                      "Total User",
                      style: TextStyle(
                        fontSize: 14, 
                        fontWeight: FontWeight.w500,
                        color: AppColor.secondaryColor
                      ),
                    ),
                    Text(
                      "36",
                      style: TextStyle(
                        fontSize: 14, 
                        fontWeight: FontWeight.w500,
                        color: AppColor.secondaryColor
                      ),
                    ),
                  ],
                ),

              ElevatedButton.icon(
                icon: Icon(
                  Icons.person_add,
                  color: AppColor.primaryColor,
                  size: 24.0,
                ),
                label: Text('Add new User'),
                onPressed: () {
                  print('Button Pressed');
                },
                style: ElevatedButton.styleFrom(
                  primary: AppColor.secondaryColor,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(7.0),
                  ),
                ),
                ),
              ],
            ),
            SizedBox(height: 16,),
            CustomTextField(
              hintText: "Search...",
              prefixIcon: Icon(Icons.search),
            ),
            Divider(
              thickness: 1,
              color: AppColor.secondaryColor.withOpacity(0.25),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: user.length,
                itemBuilder: (context, index){
                  return ListTile(

                    leading: user[index]["image"] != "null" ?  CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(user[index]["image"])
                
                    ) : CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage("assets/image/profile.jpg"),
                    ),
                    title: Text(
                      "${user[index]["name"]}",
                      style: TextStyle(
                        fontSize: 17, 
                        fontWeight: FontWeight.w400,
                        color: AppColor.secondaryColor
                      ),
                    ),
                    subtitle:  Text(
                      "${user[index]["email"]}",
                      style: TextStyle(
                        fontSize: 13, 
                        fontWeight: FontWeight.w400,
                        color: AppColor.secondaryColor.withOpacity(0.4)
                      ),
                    ),
                    trailing: ElevatedButton(
                      onPressed: (){
                        showDialog(
                          context: context, 
                          builder: (context)=> AlertDialog(
                            title: Text(
                              "Are you sure ?",
                            ),
                            content: Container(
                              height: 188,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Divider(
                                    thickness: 1,
                                    color: AppColor.secondaryColor,
                                  ),
                                ],
                              ),
                            ),
                            actionsAlignment: MainAxisAlignment.spaceBetween,
                            actions: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.grey
                                ),
                                onPressed: (){}, 
                                child: Text("Cancel")
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.redAccent
                                ),
                                onPressed: (){}, 
                                child: Text("Confirm")
                              )
                            ],
                          )
                        );
                      },
                      child: Text(
                        'Remove',
                        style: TextStyle(
                          fontSize: 13, 
                          fontWeight: FontWeight.w400,
                          color: AppColor.secondaryColor
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(71, 32),
                        primary: AppColor.greyColor.withOpacity(0.50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7), // <-- Radius
                        ),
                      ),
                    ),
                  );
                }
              ),
            )
          ],
        ),
      ),

      bottomNavigationBar: Container(                                             
        decoration: BoxDecoration(                                            
          borderRadius: BorderRadius.only(                                           
            topRight: Radius.circular(30), 
            topLeft: Radius.circular(30),
          ),            
          boxShadow: [                                                               
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),       
          ],                                                                         
        ),                                                                           
        child: ClipRRect(                                                            
          borderRadius: BorderRadius.only(                                           
          topLeft: Radius.circular(30.0),                                            
          topRight: Radius.circular(30.0),                                           
          ),                                                                         
          child: BottomNavigationBar( 
            backgroundColor:  AppColor.secondaryColor,    
            selectedItemColor: AppColor.primaryColor,  
            unselectedItemColor: AppColor.primaryColor,                                         
            items: [                                        
              BottomNavigationBarItem(                                               
                icon: Icon(Icons.exit_to_app), 
                label: "Exit".toUpperCase()
              ), 
               BottomNavigationBarItem(                                               
                icon: Icon(Icons.person), 
                label: "User".toUpperCase()
              ),            
              BottomNavigationBarItem(                                               
                icon: Icon(Icons.person), 
                label: "Profile".toUpperCase()
              )                
            ],                                                                       
          ),                                                                         
        )                                                                            
      )
    );
  }
}