import 'package:flutter/material.dart';

class GetOtpCode extends StatefulWidget {
  static String path = "GetOtpCode";
  const GetOtpCode({Key? key}) : super(key: key);

  @override
  _GetOtpCodeState createState() => _GetOtpCodeState();
}

class _GetOtpCodeState extends State<GetOtpCode> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Enter your 4-digit code",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "code",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
            SizedBox(
              width: 5,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "| - - - -",
              ),
            ),
               
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: () {},
                     child: Text("Resend Code",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)),
                    FloatingActionButton(
                        onPressed: () {},
                        child: Icon(Icons.arrow_forward_ios)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
