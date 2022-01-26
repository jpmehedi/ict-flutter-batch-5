import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Color(0xff53B175), // background (button) color
          onPrimary: Colors.white,
          minimumSize: Size(364, 67),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ), // foreground (text) color
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            // radius: 20.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            ),
            builder: (context) {
              return Wrap(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 80,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Checkout",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 24),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.close))
                                    ],
                                  ),
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Delivery",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Checkout",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.arrow_forward_ios))
                                      ],
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Pament",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      //AssetImage(Image(image: "visa_card_icons.png")),
                                      children: [
                                        Image.asset(
                                          'assets/visa_card_icons.png',
                                          width: 25,
                                          height: 20,
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.arrow_forward_ios))
                                      ],
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Promo Code",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Pic discount",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.arrow_forward_ios))
                                      ],
                                    ),
                                  ],
                                ),
                                Divider(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Total Cost",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 18),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$13.97",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.arrow_forward_ios))
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "By placing on order you agree to our",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Terms ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          " And ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          " Conditions",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontSize: 14),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color(
                                  0xff53B175), // background (button) color
                              onPrimary: Colors.white,
                              minimumSize: Size(364, 67),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ), // foreground (text) color
                            ),
                            onPressed: () {},
                            child: Text('Plade Order'),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: Text('Checkout'),
      ),
    ));
  }
}
