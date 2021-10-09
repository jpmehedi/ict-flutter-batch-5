import 'package:flutter/material.dart';

class TextFieldScreen extends StatelessWidget {
  const TextFieldScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text("TextField"),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              // obscureText: true,
              maxLines: 4,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Enter your name",
                // hintTextDirection: TextDirection.ltr,
                hintStyle: TextStyle(
                  color: Colors.red,
                  // fontSize: 24
                ),
                labelText: "Name",
                labelStyle: TextStyle(
                  color: Colors.orange
                ),
                focusedBorder: OutlineInputBorder(
                  // borderSide: BorderSide.none
                  borderSide: BorderSide(
                    color: Colors.green,
                    width: 2
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                enabledBorder: OutlineInputBorder(
                  // borderSide: BorderSide.none
                  borderSide: BorderSide(
                    color: Colors.orange,
                    width: 2
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                prefixIcon: Icon(Icons.person, color: Colors.orange,),
                suffixIcon: IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.search)
                ),
                // enabled: true,
                // filled: true,
                // fillColor: Colors.purple
              ),
            )
          ],
        ),
      ),
    );
  }
}