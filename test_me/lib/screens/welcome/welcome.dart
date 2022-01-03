import 'package:flutter/material.dart';
import 'package:test_me/screens/welcome/login.dart';
import 'package:test_me/screens/welcome/signup.dart';
import 'package:test_me/utils/app_color.dart';
import 'package:test_me/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
                "Test me", 
                style: TextStyle(
                  fontSize: 53, 
                  fontWeight: FontWeight.w600,
                  color: AppColor.primaryColor
                ),
              ),
              Container(
                width: 229,
                height: 32,
                decoration: BoxDecoration(
                  color: AppColor.secondaryColor,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Center(
                  child: Text(
                  "User Authentica", 
                  style: TextStyle(
                    fontSize: 19, 
                    fontWeight: FontWeight.w500,
                    color: AppColor.primaryColor
                  ),
               ),
                ),
              ),
              SizedBox(height: 43,),
              CustomButton(
                onTap: (){
                Route route = MaterialPageRoute(builder: (ctx)=> LoginScreen());
                  Navigator.push(context, route);
                },
                buttonLevel: "Login",
                color: AppColor.secondaryColor,
                levelColor: AppColor.primaryColor,
              ),
              SizedBox(height: 13,),
              CustomButton(
                onTap: (){
                  Route route = MaterialPageRoute(builder: (ctx)=> SignUpScreen());
                  Navigator.push(context, route);
                    // Route route = MaterialPageRoute(builder: (ctx)=> HomeScreen());
                    // Navigator.push(context, route);
                },
                buttonLevel: "Sign up",
                color: AppColor.primaryColor,
                levelColor: AppColor.secondaryColor,
              ),
          ],
        ),
      ),
    );
  }
}

