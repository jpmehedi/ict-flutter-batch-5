import 'package:bdfoodrecipe/data.dart';
import 'package:flutter/material.dart';

class Rice extends StatelessWidget {
  final List rice = bdfood["rice"];

  int countIngredients(List ingredients){
    return ingredients.length;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 8 / 7,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10
      ), 
      itemCount: rice.length,
      padding: EdgeInsets.all(15),
      itemBuilder: (BuildContext context, int index){
        return Card(
          elevation: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(rice[index]["image"]),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  rice[index]["title"],
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20
                  ),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.watch, color: Colors.red,),
                        Text("30 min")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.food_bank, color: Colors.red,),
                        Text("${countIngredients(rice[index]["ingredients"])} ingredients")
                      ],
                    )

                  ],
                ),
              )

            ],
          ),
        );
      }
    );
  }
}