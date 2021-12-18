import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
           gradient: LinearGradient(
            colors: [
              Color(0xff4B3EAE),
              Color(0xff8C85CB),
              Color(0xff4B3EAE),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight
          ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.arrow_back_ios_new, color: Colors.white,))
                  ),
                  Expanded(
                    flex: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Today’s Weather",
                        style: TextStyle(
                          fontSize: 24, 
                          fontWeight: FontWeight.bold,
                          color: Colors.white 
                         ),
                        ),
                        Text("Sunday, 8 March 2021",
                        style: TextStyle(
                          fontSize: 11, 
                          fontWeight: FontWeight.bold,
                          color: Colors.white 
                         ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            SizedBox(height: 32,),
            Container(
              height: 165,
              width: double.infinity,
              padding: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1
                ),
                borderRadius: BorderRadius.circular(40),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffB7B2DF),
                    Color(0xff8C85CB),
                    Color(0xffB7B2DF),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight
                ),
          
              ),
              child: Row(
                children: [
                  Image.asset(
                    "assets/moon_cloud_fast_wind.png",
                    scale: 1.7,
                  ),
                  SizedBox(height: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "28°",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 72,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        "Moon Cloud Fast Wind",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  )
                ],
               ),
             ),
            SizedBox(height: 64,),
      
             Stack(
               alignment: Alignment.topCenter,
               children: [
                 Transform.translate(
                   offset: Offset(0, -24),
                   child: Container(
                     width: MediaQuery.of(context).size.width - 80,
                     height: 100,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(40),
                       color:  Color(0xffB7B2DF),
                     ),
                   ),
                 ),
                 Container(
                   width: double.infinity,
                   padding: EdgeInsets.all(15),
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40),
                     color: Colors.white
                   ),
                   child: Column(
                     children: [
                      Text("Future Weather", 
                        style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                       ),
                       ListView.separated(
                         shrinkWrap: true,
                         itemBuilder: (context, index){
                           return FutureWeatherListBuilder();
                         }, 
                         separatorBuilder: (context, index){
                          return Divider(
                             thickness: 0.5,
                             color: Colors.grey.withOpacity(0.75),
                           );
                         }, 
                         itemCount: 6
                        ),
                     ],
                   )
                 ),
               ],
             )
      
            ],
          ),
        ),
      ),
    );
  }
}

class FutureWeatherListBuilder extends StatelessWidget {
  const FutureWeatherListBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset("assets/moon_cloud_fast_wind.png", scale: 4,),
        Spacer(
          flex: 1,
        ),
        Text(
          "29º",
         style: TextStyle(
           color: Colors.black,
           fontSize: 36,
           fontWeight: FontWeight.bold
         ),
        ),
        SizedBox(width: 16,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
             "Monday",
             style: TextStyle(
               color: Colors.black,
               fontSize: 13,
               fontWeight: FontWeight.bold
             ),
           ),
            Text(
             "9 March 2021",
             style: TextStyle(
               color: Color(0xffDDDBF3),
               fontSize: 13,
               fontWeight: FontWeight.bold
             ),
           ),
          ],
        )
      ],
    );
  }
}