import 'package:flutter/material.dart';

class OrderAccepted extends StatelessWidget {
  const OrderAccepted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/place_image.png',
              width: MediaQuery.of(context).size.width,
              //width: double.infinity,
              // fit: BoxFit.cover,
              //height: 200,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Image.asset("assets/bg.png"),
                Text(
                  "Your Order has been ",
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
                Text(
                  "accepted",
                  style: TextStyle(color: Colors.black, fontSize: 28),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Your items has been placcd and is on ",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "it’s way to being processed",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff53B175), // background (button) color
                    onPrimary: Colors.white,
                    minimumSize: Size(364, 67),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ), // foreground (text) color
                  ),
                  onPressed: () {},
                  child: Text('Track Order'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Back to home',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
