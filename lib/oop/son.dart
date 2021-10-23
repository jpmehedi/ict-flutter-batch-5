import 'package:test_project/oop/father.dart';

class Son extends Father{

    int? roll;
    String? gender;

    Son({this.roll, this.gender});

   showData() {
     int? roll = this.roll;
      print("Roll: $roll Gender: $gender");
  }


  int _id = 20;
  multiply(int num, int num2) {
    return num * num2;
  }


  @override
  void display() {
    // TODO: implement display
    print("Hello Bangladesh");
    return super.display();
  }



}