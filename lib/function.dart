
findEvenOdd(int a, int b) {

  if(a == 0 || a < 0 ) {
    return "$a is not allowed";
  }

  if (a % 2 == 0) {
    return "$a number is even";
  }else {
    return "$a number is odd";
  }
}
