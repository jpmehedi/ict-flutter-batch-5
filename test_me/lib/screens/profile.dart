import 'package:flutter/material.dart';
import 'package:test_me/utils/app_color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

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
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/image/profile.jpg"),
            ),
               
            Text(
              "Mr. John Doe",
              style: TextStyle(
                fontSize: 32, 
                fontWeight: FontWeight.w600,
                color: AppColor.secondaryColor
              ),
            ),
            Text(
              "email@email.com",
              style: TextStyle(
                fontSize: 14, 
                fontWeight: FontWeight.w500,
                color: AppColor.secondaryColor
              ),
            ),
            Text(
              "Phone: 012345678901",
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.w500,
                color: AppColor.secondaryColor
              ),
            ),
            Card(
              child: SizedBox(
                height: 32,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Created Date & Time:",
                      style: TextStyle(
                        fontSize: 14, 
                        fontWeight: FontWeight.w500,
                        color: AppColor.secondaryColor
                      ),
                    ),
                    Text(
                      "12/12/2021 06.30 AM",
                      style: TextStyle(
                        fontSize: 14, 
                        fontWeight: FontWeight.w500,
                        color: AppColor.secondaryColor
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Icon(Icons.location_on,color: Colors.grey),
                SizedBox(width: 10,),
                Text(
                  "Location",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                )
              ],
            ),
            Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  "assets/image/google_map.png"
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}