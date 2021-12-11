import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Pasuruan"),
          Text("17.45 PM"),

            CarouselSlider(
            options: CarouselOptions(height: 400.0),
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