import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("I'm Rich", 
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: 5.0,
              fontStyle: FontStyle.italic,
           ), 
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
             
                decoration: BoxDecoration(
                  color: Colors.red,
                  // border: Border(
                  //   left: BorderSide(
                  //     color: Colors.black,
                  //     width: 5,
                  //   ),
                  //   right:  BorderSide(
                  //     color: Colors.black,
                  //     width: 5,
                  //   ),
                  //   top:  BorderSide(
                  //     color: Colors.black,
                  //     width: 5,
                  //   ),
                  //   bottom:  BorderSide(
                  //     color: Colors.black,
                  //     width: 5,
                  //   ),
                  // )
                  border: Border.all(
                    color: Colors.black,
                    width: 5
                  ),
                  borderRadius: BorderRadius.circular(20),
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(20),
                  //   bottomRight: Radius.circular(20),
                  //   topRight: Radius.circular(30)
                  // ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      spreadRadius: 15,
                      offset: Offset(5, 5)
                    )
                  ],
                  // gradient: LinearGradient(
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  //   colors: [
                  //     Colors.red,
                  //     Colors.green,
                  //     Colors.pink,
                  //   ]
                  // )

                  gradient: RadialGradient(
                    // radius: 0.5,
                    colors: [
                      Colors.red,
                      Colors.green,
                      Colors.orange,
                    ],
                    stops: [
                     0.5,
                     0.7,
                     1,
                    ]
                  )



                ),
                child: Text("Container ashdnsad"),
              )
            ],
          ),
        ) 
    );
  }
}


