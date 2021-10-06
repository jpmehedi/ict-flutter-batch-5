import 'package:flutter/material.dart';

class BmiScreen extends StatelessWidget {
  const BmiScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bmi calculator".toUpperCase()),
        centerTitle: true,
        actions: [
          Icon(Icons.monochrome_photos)
        ],
      ),
      drawer: Drawer(),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      height: 180,
                      width: MediaQuery.of(context).size.width / 2 - 28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Age(In Year)",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            "18", 
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: (){}, 
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  primary: Colors.white.withOpacity(0.25)
                                ),
                                child: Icon(Icons.remove, color: Colors.purple,size: 45)
                              ),
                              ElevatedButton(
                                onPressed: (){}, 
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  primary: Colors.white.withOpacity(0.25)
                                ),
                                child: Icon(Icons.add, color: Colors.purple,size: 45)
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ),
                  Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    child: Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width / 2 - 28,
                      padding: EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Weight(KG)",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            "50", 
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                onPressed: (){}, 
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  primary: Colors.white.withOpacity(0.25)
                                ),
                                child: Icon(Icons.remove, color: Colors.purple, size: 45)
                              ),
                              ElevatedButton(
                                onPressed: (){}, 
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  primary: Colors.white.withOpacity(0.25)
                                ),
                                child: Icon(Icons.add, color: Colors.purple,size: 45)
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ),
                ],
              ),
            ),
    
            SizedBox(height: 20,),
            Card(
              elevation: 10,
              child: Container(
                height: 250,
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 150,
                            height: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.purple.withOpacity(0.20)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("cm"),
                                Switch(
                                  value: true, 
                                  onChanged: (bool isSelected){

                                  }
                                ),
                                Text("ft")
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Height",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 150,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.withOpacity(0.25)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "4",
                                  style: TextStyle(
                                    fontSize: 48,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Icon(Icons.arrow_downward, size: 40,)
                              ],
                            ),
                          ),
                          Container(
                            width: 150,
                            height: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.withOpacity(0.25)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '8"',
                                  style: TextStyle(
                                    fontSize: 48,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                Icon(Icons.arrow_downward, size: 40,)
                              ],
                            ),
                          )
                        ],
                      )

                  ],
                ),
              ),
            )





            // Container(
            //   width: double.infinity,
            //   height: 100,
            //   color: Colors.black,
            // ),
            // Container(
            //   width: double.infinity,
            //   height: 100,
            //   color: Colors.yellow,
            // )
          ],
        ),
      ),
      
    );
  }
}