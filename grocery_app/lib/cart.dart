import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  _MyCartState createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<Cart> itsMyCart = [
    Cart(
        leading: 'assets/pepper.png',
        title: 'Bell Pepper Red',
        subtitle: '1kg, Price',
        trailingText: '\$4.99',
        trailingIcon: Icons.close),
    Cart(
        leading: 'assets/egg.png',
        title: 'Egg Chicken Red',
        subtitle: '4pcs, Price',
        trailingText: '\$1.99',
        trailingIcon: Icons.close),
    Cart(
        leading: 'assets/banana.png',
        title: 'Organic Bananas',
        subtitle: '12kg, Price',
        trailingText: '\$3.00',
        trailingIcon: Icons.close),
    Cart(
        leading: 'assets/ginger.png',
        title: 'Ginger',
        subtitle: '250gm, Price',
        trailingText: '\$2.99',
        trailingIcon: Icons.close),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        title: Text(
          'My Cart',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 14,
          ),
          Expanded(
            child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: itsMyCart.length,
                separatorBuilder: (__, index) {
                  return Divider(
                    thickness: 1,
                    height: 0,
                    color: Color(0xffE2E2E2),
                  );
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
                    dense: true,
                    isThreeLine: true,
                    // contentPadding: EdgeInsets.symmetric(
                    //     vertical: 0.0, horizontal: 16.0),
                    leading: Image.asset(itsMyCart[index].leading),
                    title: Text(itsMyCart[index].title),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(itsMyCart[index].subtitle),
                        Row(
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                minimumSize: Size(45.67, 45.67),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17),
                                ),
                                side: BorderSide(
                                  width: 1,
                                  color: Color(0xffF0F0F0),
                                ),
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.remove,
                                color: Color(0xFFB3B3B3),
                              ),
                            ),
                            SizedBox(
                                width: 30, child: Center(child: Text('1'))),
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                minimumSize: Size(45.67, 45.67),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17),
                                ),
                                side: BorderSide(
                                  width: 1,
                                  color: Color(0xffF0F0F0),
                                ),
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.add,
                                color: Color(0xFF53B175),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    trailing: Container(
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Icon(itsMyCart[index].trailingIcon),
                          ),
                          Text(itsMyCart[index].trailingText),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 67.69),
                primary: Color(0xFF53B175),
                onPrimary: Color(0xFFFCFCFC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyCart()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Go to Checkout',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text('\$12.96'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Shop'),
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.store_outlined),
      //       label: 'Explore',
      //       backgroundColor: Colors.red),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.shopping_cart),
      //     label: 'Cart',
      //   ),
      //   BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourite'),
      //   BottomNavigationBarItem(
      //     icon: Icon(Icons.person),
      //     label: 'Account',
      //   ),
      // ]),
    );
  }
}

class Cart {
  final String leading;
  final String title;

  final String subtitle;

  final String trailingText;

  final IconData trailingIcon;

  Cart({
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.trailingText,
    required this.trailingIcon,
  });
}
