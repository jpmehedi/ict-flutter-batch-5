

import 'package:test_project/oop/son.dart';

void main() {

  // Father obj = Father();

  // print(obj.name);


  // Son son = Son(10, "Male");
  Son son= Son(gender:  "Male", roll: 75);

  // SonTwo sonTwo = SonTwo();
  son.multiply();
  son.showData();

  son.display();
  // sonTwo.display();


  /// [Final Const]
  
  //   final String name;
 
//   name = "Hasan";
//   print(name);
  
  
//   const double pi;
  
//   pi = 3.141;
  
  
//   final DateTime dateTime = DateTime.now();
  // const DateTime dateTime = DateTime.now();
  
  // print(dateTime);





  ///[Async awati]
  
//   void main() {
  

//   print("Before async");
//   getData();
//   print("After async");

  
  
  
// }


//  Future getData()async{
  
//   await Future.delayed(Duration(microseconds: 1));
   
//    print("Data fetch done");
   
// }


}
