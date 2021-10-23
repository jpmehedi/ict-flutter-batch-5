import 'package:test_project/oop/father.dart';

class Son extends Father{
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