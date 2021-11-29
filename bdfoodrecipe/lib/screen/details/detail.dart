import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  static String path = "Details";
  const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(
          onPressed: (){},
           icon: Icon(Icons.share)
           ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("assets/images/rice/1.jpg"),
                Container(
                  width: double.infinity,
                  height: 48,
                  color: Colors.black.withOpacity(0.50),
                  child: Text("Hello World"),
                )
              ],
            ),
            Container(
              height: 48,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                        color: Colors.yellowAccent.shade100,
                        child: Column(
                          children: [
                            Icon(Icons.single_bed),
                            Text("Cooked")
                          ],
                        ),
                      ),
                    ),
                  ),
                 Expanded(
                   child: InkWell(
                      onTap: (){},
                      child: Container(
                        color: Colors.orange,
                        child: Column(
                          children: [
                            Icon(Icons.single_bed),
                            Text("Cooked")
                          ],
                        ),
                      ),
                    ),
                 ),
                Expanded(
                  child: InkWell(
                      onTap: (){},
                      child: Container(
                        color: Colors.green,
                        child: Column(
                          children: [
                            Icon(Icons.single_bed),
                            Text("Cooked")
                          ],
                        ),
                      ),
                    ),
                ),
                ],
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}