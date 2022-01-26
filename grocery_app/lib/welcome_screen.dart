import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  get images => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/welcome_background.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    FaIcon(
                      FontAwesomeIcons.carrot,
                      color: Colors.white,
                      size: 90,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Welcome',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 50,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'to our store',
                      style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 50,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Ger your groceries in as fast as one hour',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              const CustomeButton(
                buttonText: "Get Started",
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
  final Color? color;
  final Color? textColor;
  const CustomeButton({
    Key? key,
    this.buttonText,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        '$buttonText',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
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
