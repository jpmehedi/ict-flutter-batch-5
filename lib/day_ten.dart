import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView & ListTile"),),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Image.asset("assets/background.jpg"),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage("assets/poor_man.png"),
                    ),
                  ),
                  Positioned(
                    top: 80,
                    left: 20,
                    child: Text(
                      "Mehedi Hasan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24
                      ),
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: 20,
                    child: Text(
                      "mehedihasaninfrom@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              onTap: (){},
              leading: Icon(Icons.music_video),
              title: Text(
                "Music"
              ),
            ),
            
            ListTile(
              onTap: (){},
              leading: Icon(Icons.movie_rounded),
              title: Text(
                "Movies"
              ),
            ),
            
            ListTile(
              onTap: (){},
              leading: Icon(Icons.shop),
              title: Text(
                "Shop"
              ),
            ),
            
            ListTile(
              onTap: (){},
              leading: Icon(Icons.music_video),
              title: Text(
                "Music"
              ),
            ),
            
            ListTile(
              onTap: (){},
              leading: Icon(Icons.apps),
              title: Text(
                "Apps"
              ),
            )
          ],
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (BuildContext context, int index){
          return Divider(
            thickness: 1,
            color: Colors.teal,
            height: 0,
          );
        },
        itemCount: 60,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: (){},
            leading: CircleAvatar(
              radius: 32,
              child: Icon(Icons.phone),
            ),
            title: Text("+75204820025"),
            subtitle: Text("Flutter Developer"),
            trailing: Icon(Icons.arrow_forward_ios),
          );
        },
      )
    );
  }
}