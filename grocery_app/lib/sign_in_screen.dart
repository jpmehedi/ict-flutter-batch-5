
// import 'package:flutter/material.dart';
// import 'package:grocery_app/sign_up_screen.dart';

// class SignInScreen extends StatelessWidget {
//   static const String path = "/SignInScreen";
//   const SignInScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('assets/bg.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Padding(
//             padding: const EdgeInsets.all(20),
//             child: Column(children: [
//               Image.asset(
//                 'assets/logo.png',
//                 height: 50,
//                 width: 50,
//               ),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   SizedBox(
//                     height: 80,
//                   ),
//                   Text(
//                     "Loging",
//                     textAlign: TextAlign.start,
//                     style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     "Enter your emails and password",
//                     textAlign: TextAlign.start,
//                     style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   TextField(
//                     decoration: InputDecoration(
//                       hintText: "Email",
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   TextField(
//                     obscureText: true,
//                     decoration: InputDecoration(
//                       hintText: "Password",
//                       suffixIcon: Icon(Icons.visibility_off),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   TextButton(onPressed: () {}, child: Text("Forgot password?")),
//                 ],
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 child: Text("Log in"),
//                 onPressed: () {
//                   Navigator.pushNamed(context, SignUpScreen.path);
//                 },
//                 style: ElevatedButton.styleFrom(
//                   minimumSize: Size(double.infinity, 58),
//                   primary: Color(0xff53B175),
//                   onPrimary: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12.0),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 32,
//               ),
//               Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//                 Text(
//                   "Don’t have an account? ",
//                   style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
//                 ),
//                 TextButton(
//                     onPressed: () {
//                       Navigator.pushNamed(context, SignUpScreen.path);
//                     },
//                     child: Text("Singup")),
//               ])
//             ])),
//       )),
//     );
//   }
// }
