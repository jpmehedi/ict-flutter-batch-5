import 'package:flutter/material.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({Key? key}) : super(key: key);

  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  bool isTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              // obscureText: true,
              // maxLines: 4,
              onTap: (){
                setState(() {
                  isTap = true;
                });
                print(isTap);
              },
              style: TextStyle(
                color: Colors.red
              ),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                // contentPadding: EdgeInsets.only(left: 100, top: 30, bottom: 50,right: 100),
                hintText: "Enter your name",
                // hintTextDirection: TextDirection.ltr,
                hintStyle: TextStyle(color: Colors.red),
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.orange),
                focusedBorder: OutlineInputBorder(
                    // borderSide: BorderSide.none
                    borderSide: BorderSide(color: Colors.green, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                enabledBorder: OutlineInputBorder(
                    // borderSide: BorderSide.none
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                prefixIcon: Icon(
                  Icons.person,
                  color: isTap ? Colors.green : Colors.orange,
                ),
                suffixIcon:
                    IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                // enabled: true,
                // filled: true,
                // fillColor: Colors.purple
              ),
            ),
          ],
        ),
      ),
    );
  }
}
