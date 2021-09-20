import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/poor_man.png"),
              ),
            ),
            Text(
              "Mr. Mehedi Hasan",
              style: TextStyle(
                fontFamily: "Lobster",
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.white
              ),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                fontFamily: "Righteous",
                letterSpacing: 2.5,
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: Colors.white
              ),
            ),
            Divider(
              color: Colors.white.withOpacity(0.75),
              thickness: 1,
              indent: 150,
              endIndent: 150,
              height: 28,
            ),

            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  SizedBox(width: 28,),
                  Text(
                    "+880179018082",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  SizedBox(width: 28,),
                  Text(
                    "mehedihasandinform@gamil.com",
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 20,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}