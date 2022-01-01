import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test_me/screens/home.dart';
import 'package:test_me/utils/app_color.dart';
import 'package:test_me/widgets/custom_back_button.dart';
import 'package:test_me/widgets/custom_button.dart';
import 'package:test_me/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;

  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  
 Future singIn()async{
   setState(() {
     isLoading = true;
   });
   try{
    UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailEditingController.text,
        password: passwordEditingController.text
    );
    if(userCredential.user != null){
      Route route = MaterialPageRoute(builder: (ctx)=> HomeScreen());
      Navigator.push(context, route);
    }
    
   }catch(err){
     const snackBar = SnackBar(
        content: Text('You are not authorized user'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
   }
   
   setState(() {
     isLoading = false;
   });

  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.primaryColor,
          leadingWidth: 100,
          leading: CustomBackButton(
            onTap: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 32, 
                    fontWeight: FontWeight.w400,
                    color: AppColor.secondaryColor
                  ),
                ),
                SizedBox(height: 12,),
                Text(
                  "Enter your email address and password to access your account",
                  style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.w400,
                    color: AppColor.secondaryColor
                  ),
                ),
                SizedBox(height: 102,),
                CustomTextField(
                  controller: emailEditingController,
                  hintText: "Email",
                ),
                SizedBox(height: 12,),
                CustomTextField(
                  controller: passwordEditingController,
                  obscureText: true,
                  hintText: "Password",
                  suffixIcon: Icon(Icons.visibility),
                ),
                SizedBox(height: 59,),
                 isLoading ? Center(child: CircularProgressIndicator(),) :  CustomButton(
                  onTap: (){
                    singIn();
                  },
                  color: AppColor.secondaryColor,
                  levelColor: AppColor.primaryColor,
                  buttonLevel: "Login",
                ),
                // Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text(
                      "Don’t have an account?",
                      style: TextStyle(
                        fontSize: 16, 
                        fontWeight: FontWeight.w500,
                        color: AppColor.secondaryColor
                      ),
                    ),
                    TextButton(
                      onPressed: (){}, 
                      child:  Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 16, 
                        fontWeight: FontWeight.w500,
                        color: AppColor.accentColor
                      ),
                    ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


