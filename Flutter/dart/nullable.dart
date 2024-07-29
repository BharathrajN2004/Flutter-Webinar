void main() {
  // Assignment Operator
  int? a;
  a ??= 10;
  a ??= 20;
  print(a);

  //  conditional Operator

  a == 10 ? print("a is 10") : print("a is 20");

  print(a ?? "20");
}
