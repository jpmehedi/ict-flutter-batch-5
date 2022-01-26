import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedLabelStyle: TextStyle(color: Colors.green),
            unselectedLabelStyle: TextStyle(color: Colors.black),
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.black,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop,
                ),
                label: 'Shop',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.explore_outlined), label: 'Explore'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline), label: 'Favourite'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people_alt_outlined), label: 'Profile')
            ]),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                children: [
                  Icon(
                    Icons.ac_unit,
                    size: 23,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_city),
                      Text(
                        'Dhaka, Banasree',
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextFormField(
                      style: TextStyle(),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        hintText: 'Search Store',
                        filled: true,
                        fillColor: Colors.grey,
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 35.18,
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    height: 114,
                    width: 364,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/banner.png'),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 30,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exclusive Offer',
                          style: TextStyle(
                              fontFamily: 'Gilory',
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              fontFamily: 'See All',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  //first list
                  Container(
                      height: 260,
                      margin: EdgeInsets.only(top: 14),
                      padding: EdgeInsets.only(left: 15),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Card(
                            elevation: 5,
                            child: SizedBox(
                              width: 173,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 80,
                                    width: 99,
                                    child: Image(
                                      image: AssetImage('assets/banan.png'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 26,
                                  ),
                                  Text(
                                    'Organic Bananas',
                                    style: TextStyle(
                                        fontFamily: 'Gilory',
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '7Pcs PriceG',
                                    style: TextStyle(
                                        fontFamily: 'Gilory',
                                        fontWeight: FontWeight.w300,
                                        color: Colors.grey),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        '\$4.99',
                                        style: TextStyle(
                                            fontFamily: 'Gilory',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18),
                                      ),
                                      Container(
                                        height: 46,
                                        width: 46,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(16)),
                                        child: Icon(Icons.add),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )),

                  //exclusive offer list
                  SizedBox(
                    height: 30,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Best Selling',
                          style: TextStyle(
                              fontFamily: 'Gilory',
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  //best selling list
                  Container(
                      height: 249,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(12)),
                            width: 248,
                            height: 162,
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 99,
                                  child: Image(
                                    image: AssetImage('assets/banan.png'),
                                  ),
                                ),
                                SizedBox(
                                  height: 26,
                                ),
                                Text(
                                  'Organic Bananas',
                                  style: TextStyle(
                                      fontFamily: 'Gilory',
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '7Pcs PriceG',
                                  style: TextStyle(
                                      fontFamily: 'Gilory',
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '\$4.99',
                                      style: TextStyle(
                                          fontFamily: 'Gilory',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    Container(
                                      height: 46,
                                      width: 46,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Icon(Icons.add),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),

                  //grocery
                  SizedBox(
                    height: 30,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Grocery',
                        style: TextStyle(
                            fontFamily: 'Gilory',
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontFamily: 'See All',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.green),
                      ),
                    ],
                  ),

                  Container(
                      height: 105,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(12)),
                            width: 248,
                            height: 105,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 80,
                                  width: 99,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/4215936-pulses-png-8-png-image-pulses-png-409_409 1.png'),
                                  )),
                                ),
                                Text(
                                  'Pulse',
                                  style: TextStyle(
                                      fontFamily: 'Gilory',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                  Container(
                      height: 249,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0.0, 1.0), //(x,y)
                                    blurRadius: 6.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(12)),
                            width: 248,
                            height: 162,
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 99,
                                  child: Image(
                                    image: AssetImage('assets/banan.png'),
                                  ),
                                ),
                                SizedBox(
                                  height: 26,
                                ),
                                Text(
                                  'Organic Bananas',
                                  style: TextStyle(
                                      fontFamily: 'Gilory',
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '7Pcs PriceG',
                                  style: TextStyle(
                                      fontFamily: 'Gilory',
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '\$4.99',
                                      style: TextStyle(
                                          fontFamily: 'Gilory',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    Container(
                                      height: 46,
                                      width: 46,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      child: Icon(Icons.add),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
