import 'package:test_project/oop/father.dart';
import 'package:test_project/oop/mother.dart';
import 'package:test_project/oop/son_two.dart';

class Son with Father, Mother, SonTwo{

    int? roll;
    String? gender;

    Son({this.roll, this.gender});

   showData() {
     int? roll = this.roll;
      print("Roll: $roll Gender: $gender");
  }


 

  @override
  void display() {
    // TODO: implement display
    print("Hello Bangladesh");
    return super.display();
  }



}