import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff53B175),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FaIcon(
                  FontAwesomeIcons.carrot,
                  color: Colors.white,
                  size: 60,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: const [
                    Text(
                      "nectar",
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 63,
                        height: 0.95,
                      ),
                    ),
                    Text(
                      "online groceriet",
                      softWrap: true,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        height: 0.50,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
