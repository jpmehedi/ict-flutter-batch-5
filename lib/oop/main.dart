

import 'package:test_project/oop/son.dart';
import 'package:test_project/oop/son_two.dart';

void main() {

  // Father obj = Father();

  // print(obj.name);


  // Son son = Son(10, "Male");
  Son son= Son(gender:  "Male", roll: 75);

  SonTwo sonTwo = SonTwo();
  print(son.multiply(52, 23));
  son.showData();

  son.display();
  sonTwo.display();

}
