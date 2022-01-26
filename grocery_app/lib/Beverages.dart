

import 'package:flutter/material.dart';
class Beverages extends StatefulWidget {
  const Beverages({ Key? key }) : super(key: key);

  @override
  _BeveragesState createState() => _BeveragesState();
}

class _BeveragesState extends State<Beverages> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        
        appBar: AppBar(
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios, color: Colors.black,)),
          elevation: 0
          ,title:Text("Beverages",
        style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.file_present, color: Colors.black,)),
        ],
      ),
        body: Container(child: Products(),),
      
    );
  }
}

class Products extends StatefulWidget {
  const Products({ Key? key }) : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
final list_item= [
  Product(product_name: '\$1.99',
  product_pic:"assets/pic13.jpg" ,
  ontap: (){},
  subtitle: "4pcs,Price",
  Title: "Egg Chicken Red"

  ),
  Product(product_name: '\$1.50',
  product_pic:"assets/pic14.jpg" ,
   ontap: (){},
   subtitle: "180g,Price",
   Title: "Egg Chicken White"
  ),
  Product(product_name: '\$15.99',
  product_pic:"assets/pic15.jpg" ,
 ontap: (){},
   subtitle: "30gm,Price",
   Title: "Egg Pasta"
  ),
  Product(product_name: '\$15.99',
  product_pic:"assets/pic16.jpg" ,
ontap: (){},
   subtitle: "2L,Price",
   Title: "Egg Noodles"
  ),
  Product(product_name: '\$4.99',
  product_pic:"assets/pic17.jpg" ,
   ontap: (){},
   subtitle: "325ml,Price",
   Title: "Mayonnais EggLess"
  ),
  Product(product_name: '\$4.99',
  product_pic:"assets/pic18.jpg" ,
 ontap: (){},
   subtitle: "330mL,Price",
   Title: "Egg Noodles"
  ),

   
    
  
  
];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      
      itemCount: list_item.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
       itemBuilder: (BuildContext context,int index)
       { return
        //  return Product(
        //    product_name: list_item[index]["name"],
           
        //    product_pic: list_item[index]["pic"],
            GestureDetector(
              onTap: list_item[index].ontap,
              child: Card(
                
                  
                
                  
              child: Padding(padding: EdgeInsets.all(8.0),
              
              child: Column( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                  Expanded(
                  
                  child: 
                Padding(
                  padding: const EdgeInsets.only(top: 1.0, bottom: 16),
                  child: Image.asset(list_item[index].product_pic,
                    fit: BoxFit.contain,
                    
                    height: 74.9,
                    width: 111.38,
                    ),
                ),),

Expanded(
  child:  Container(
    width: double.infinity,
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(list_item[index].Title),
          Text(list_item[index].subtitle),
        ]  
    ),
  ),
),


Row(
  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
  children: [
    Text(list_item[index].product_name,style: TextStyle(fontFamily: "Gilroy-Bold"),),
    Container(
  padding: EdgeInsets.all(7),
  decoration: BoxDecoration(color: Colors.green,
  borderRadius: BorderRadius.circular(10),),
  child: Icon(Icons.add,size: 20,color: Colors.white,),
  
  
),
  ],
)
                ],
              ),
              ),
                      
                      
                  ),
            );

           

           
        //  );
      
       }
       );
  }
}

class Product {
   final product_name;
  final product_pic;
 
late var ontap;
final subtitle;
final Title;

  
Product({
  this.product_name,
  this.product_pic,  required this.ontap,this.subtitle,this.Title});
}
