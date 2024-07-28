void main() {
  // Question 1:
  // What will be the output of the following code and why?
  var a = 10;
  var b = "20";
  var c = a + (int.tryParse(b) ?? 0);
  print(c);

  // Question 2:
  // Can you explain why the following code does not throw a compile-time error,
  // and what will be the output?
  // int x;
  // if (x == null) {
  //   print("x is null");
  // } else {
  //   print("x is not null");
  // }

  // Question 3:
  // Given the following code, what will be the output and why?
  final list1 = [1, 2, 3];
  final list2 = [1, 2, 3];
  // final list2 = List.of(list1);
  // list1.remove(1);
  // print(list2);
  print(list1 == list2);

  // Question 4:
  // What will be the output of the following code and why?
  var y = 0.1 + 0.2;
  print(y == 0.3);

  // Question 5:
  // Given the following code, explain the output:
  var map1 = {'key': 'value'};
  var map2 = Map.from(map1);
  map2['key'] = 'newValue';
  print(map1);
  print(map2);

  // Question 6:
  // What will be the output of the following code and why?
  const list = [1, 2, 3];
  try {
    list.add(4);
  } catch (e) {
    print(e);
  }

  // Question 7:
  // What will be the output of the following code and why?
  dynamic val = 42;
  val = val + 1;
  print(val);
  val = "Hello";
  print(val);

  // Question 8:
  // Given the following code, what will be the output and why?
  var n = null;
  var result = n ??= 100;
  print(result);
  print(n);

  // Question 9:
  // What will be the output of the following code and why?
  var p = 42;
  dynamic q = p;
  p = 32;
  print(q);

  // Question 10:
  // Given the following code, what will be the output and why?
  List<int> numbers = [1, 2, 3];
  var clone = List<int>.from(numbers);
  clone[0] = 99;
  print(numbers);
  print(clone);
}
