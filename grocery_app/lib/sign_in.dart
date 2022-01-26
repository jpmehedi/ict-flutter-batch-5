import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/signin_background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Get your groceries',
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'with nectar',
                    style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      height: 0.3,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Phone Number",
                      focusColor: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              const CustomeButton(
                buttonIcon: Icon(Icons.visibility),
                buttonText: "Continue with Google",
                color: Color(0xff53B175),
                textColor: Color(0xffFFFFFF),
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomeButton(
                buttonIcon: Icon(Icons.ac_unit),
                buttonText: "Continue with Facebook",
                color: Color(0xff53B175),
                textColor: Color(0xffFFFFFF),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomeButton extends StatelessWidget {
  final String? buttonText;
  final Icon? buttonIcon;
  final Color? color;
  final Color? textColor;
  const CustomeButton({
    Key? key,
    this.buttonText,
    this.color,
    this.textColor,
    this.buttonIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(
        Icons.facebook,
        color: Colors.red,
        size: 30.0,
      ),
      label: Text('$buttonText'),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(
          double.infinity,
          80,
        ),
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
