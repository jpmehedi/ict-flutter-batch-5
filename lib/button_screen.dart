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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 400,
              height: 48,
              child: ElevatedButton(
                onPressed: (){}, 
                child: Text("Back"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  elevation: 20,
                  shadowColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    side: BorderSide(
                      color: Colors.red,
                      width: 2.0,
                      style: BorderStyle.solid
                    )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}