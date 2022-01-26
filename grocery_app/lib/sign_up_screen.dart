import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static const String path = "/SignUpScreen";
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Image.asset(
              'assets/logo.png',
              height: 50,
              width: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Text(
                  "Sign Up",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter your credentials to continue",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: 'By continuing you agree to our ',
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text: 'Terms of Service ',
                          style: TextStyle(color: Colors.blue),
                          onEnter: (value) {
                            print("Click");
                          }),
                      TextSpan(text: 'and '),
                      TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: Colors.blue),
                          onEnter: (value) {
                            print("Click");
                          }),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: Text("Sing Up"),
              onPressed: () => print("it's pressed"),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 58),
                primary: Color(0xff53B175),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Already have an account? ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              ),
              TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, SignInScreen.path);
                  },
                  child: Text("SignIn")),
            ])
          ]),
        ),
      )),
    );
  }
}
