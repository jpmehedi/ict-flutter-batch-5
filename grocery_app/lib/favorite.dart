import 'package:flutter/material.dart';
import 'package:grocery_app/cart.dart';

class MyFAVORITE {
  final String leading;
  final String title;

  final String subtitle;

  final String trailingText;

  final IconData trailingIcon;

  MyFAVORITE({
    required this.leading,
    required this.title,
    required this.subtitle,
    required this.trailingText,
    required this.trailingIcon,
  });
}

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);
  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  List<MyFAVORITE> myFavoriteScreeen = [
    MyFAVORITE(
        leading: 'assets/sprite.png',
        title: 'Sprite Can',
        subtitle: '325ml, Price',
        trailingText: '\$1.50',
        trailingIcon: Icons.chevron_right),
    MyFAVORITE(
        leading: 'assets/coke.png',
        title: 'Diet Coke',
        subtitle: '355ml, Price',
        trailingText: '\$1.99',
        trailingIcon: Icons.chevron_right),
    MyFAVORITE(
        leading: 'assets/applejuice.png',
        title: 'Apple & Grape Juice',
        subtitle: '2l, Price',
        trailingText: '\$15.50',
        trailingIcon: Icons.chevron_right),
    MyFAVORITE(
        leading: 'assets/cocacola.png',
        title: 'Coca Cola Can',
        subtitle: '325ml, Price',
        trailingText: '\$4.99',
        trailingIcon: Icons.chevron_right),
    MyFAVORITE(
        leading: 'assets/pepsi.png',
        title: 'Pepsi Can',
        subtitle: '330ml, Price',
        trailingText: '\$4.99',
        trailingIcon: Icons.chevron_right),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          'Favorite',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: myFavoriteScreeen.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {},
                        leading: Image.asset(myFavoriteScreeen[index].leading),
                        title: Text(myFavoriteScreeen[index].title),
                        subtitle: Text(myFavoriteScreeen[index].subtitle),
                        trailing: Wrap(
                          spacing: 12,
                          alignment: WrapAlignment.start,
                          children: [
                            Text(myFavoriteScreeen[index].trailingText),
                            Icon(myFavoriteScreeen[index].trailingIcon),
                          ],
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        height: 0,
                        color: Color(0xffE2E2E2),
                      ),
                    ],
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
              child: const Text(
                'Add All To Cart',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     // backgroundColor: Colors.red,
      //     fixedColor: Colors.black,
      //     items: [
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.home,
      //             color: Colors.black,
      //           ),
      //           label: 'Shop'),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //           color: Colors.black,
      //         ),
      //         label: 'Explore',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'Cart',
      //       ),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.favorite), label: 'Favourite'),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         label: 'Account',
      //       ),
      //     ]),
    );
  }
}
