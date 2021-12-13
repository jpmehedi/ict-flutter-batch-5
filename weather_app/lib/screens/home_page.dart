import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Text("Pasuruan"),
                    Text("17.45 PM"),
                    CarouselSlider(
                      options: CarouselOptions(height: 380.0),
                      items: [1,2,3,4,5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return WeatherCard();
                          },
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.green,
                child: Transform.translate(
                  offset: Offset(0, -70),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 122,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ColumnBuilder(
                              imageName: "carbon_humidity",
                              value: "75%",
                              level: "Humidity",
                            ),
                            ColumnBuilder(
                              imageName: "tabler_wind",
                              value: "8 km/h",
                              level: "Wind",
                            ),
                            ColumnBuilder(
                              imageName: "ion_speedometer",
                              value: "1011",
                              level: "Air Pressure",
                            ),
                            ColumnBuilder(
                              imageName: "ic_round-visibility",
                              value: "6 km",
                              level: "Visibility",
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20,),
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text("Today", 
                            style: TextStyle(
                              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                              Text("Next 7 Days", 
                                style: TextStyle(
                                  color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.arrow_forward_ios, size: 20,)
                              ],
                            )
                          ],
                        ),
                      ),
                
                    Container(
                      height: 132,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        itemBuilder:(context, index){
                          return DailyWeatherCard();
                        } 
                      ),
                    )
                    ],
                  ),
                ),
              ),
        

            ],
          ),
        ),
      ),  
    );
  }
}

class DailyWeatherCard extends StatelessWidget {
  const DailyWeatherCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      width: 92,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "06:00 AM",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold
            ),
          ),
          Image.asset(
            "assets/moon_cloud_fast_wind.png",
            scale: 4,
          ),
          SizedBox(height: 8,),
          Text(
            "28°",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}

class ColumnBuilder extends StatelessWidget {
  final String? imageName;
  final String? value;
  final String? level;
  const ColumnBuilder({
    Key? key, this.imageName, this.level, this.value
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/$imageName.png"),
        Text(
          "$value", 
           style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        ),
        Text(
          "$level", 
           style: TextStyle(color:Color(0xff8C85CB),fontSize: 10, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 300,
          width: 230,
        ),
        Positioned(
          top: 15,
          child: Container(
            height: 275,
            width: 230,
            padding: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: LinearGradient(
                colors: [
                  Color(0xff4B3EAE),
                  Color(0xff8C85CB),
                  Color(0xff4B3EAE),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
        
              boxShadow: [
                BoxShadow(
                  color: Color(0xff4B3EAE),
                  blurRadius: 50,
                  spreadRadius: 7,
                  offset: Offset(7,7)
                )
              ]
            ),
            child: Column(
              children: [
                Image.asset(
                  "assets/moon_cloud_fast_wind.png",
                  scale: 1.7,
                ),
                SizedBox(height: 20,),
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
            ),
          ),
        ),
        Container(
          width: 140,
          height: 34,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40)
          ),
          child: Center(
            child: Text(
              "Sunday, 8 March 2021",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        )
      ],
    );
  }
}