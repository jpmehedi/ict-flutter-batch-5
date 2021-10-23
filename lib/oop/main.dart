

import 'package:test_project/oop/son.dart';
import 'package:test_project/oop/son_two.dart';

void main() {

  // Father obj = Father();

  // print(obj.name);


  Son son = Son();

  SonTwo sonTwo = SonTwo();
  print(son.multiply(52, 23));


  son.display();
  sonTwo.display();

}
