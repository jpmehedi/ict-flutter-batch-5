import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Button Screen"),),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 400,
              height: 48,
              child: ElevatedButton.icon(
                onPressed: (){},
                // onPressed: null,  // If button is desibale then we will call null
                label: Text("Back"),
                icon: Icon(Icons.facebook),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  elevation: 20,
                  shadowColor: Colors.red,
                  // padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                  // shape: CircleBorder(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    side: BorderSide(
                      color: Colors.red,
                      width: 2.0,
                      style: BorderStyle.solid
                    )
                  ),
                ),
              ),
            ),

            //Button with icon

            ElevatedButton.icon(
              onPressed: (){}, 
              icon: Icon(Icons.facebook), 
              label: Text("Log in with facebook")
            ),


            //TextButton 

             TextButton(
               onPressed: (){},
               // onPressed: null,  // If button is desibale then we will call null
               child: Text("Back"),
              //  style: ElevatedButton.styleFrom(
              //    primary: Colors.teal,
              //    elevation: 20,
              //    shadowColor: Colors.red,
              //    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                //  shape: CircleBorder(),
              //    shape: RoundedRectangleBorder(
              //      borderRadius: BorderRadius.all(Radius.circular(10)),
              //      side: BorderSide(
              //        color: Colors.red,
              //        width: 2.0,
              //        style: BorderStyle.solid
              //      )
              //    ),
              //  ),
             ),

             //Outline button 

            OutlinedButton(
               onPressed: (){},
               // onPressed: null,  // If button is desibale then we will call null
               child: Text("Back"),
              //  style: ElevatedButton.styleFrom(
              //    primary: Colors.teal,
              //    elevation: 20,
              //    shadowColor: Colors.red,
              //    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
                //  shape: CircleBorder(),
              //    shape: RoundedRectangleBorder(
              //      borderRadius: BorderRadius.all(Radius.circular(10)),
              //      side: BorderSide(
              //        color: Colors.red,
              //        width: 2.0,
              //        style: BorderStyle.solid
              //      )
              //    ),
              //  ),
             ),
          ],
        ),
      ),
    );
  }
}