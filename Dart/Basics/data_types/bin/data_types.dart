// Dart Data Types Examples and Explanations

void main() {
  // Declaration

  // Declaring a variable with a specific type
  int myInt = 10;
  double myDouble = 20.5;
  String myString = "Hello, Dart!";
  List<int> myList = [1, 2, 3];
  Map<String, int> myMap = {'one': 1, 'two': 2};
  Set<String> mySet = {'Dart', 'Flutter'};

  // Declaration types
  // var, object, dynamic are runtime type defining declarations
  var number = 321;
  Object object = 132;
  dynamic dynamicValue = 123.321;

  print("VAR: $number => ${number.runtimeType}");
  print("OBJECT: $object => ${object.runtimeType}");
  print("DYNAMIC: $dynamicValue => ${dynamicValue.runtimeType}");

  // Type Casting
  int intObj = object as int;
  print("Converted OBJECT to INT: $intObj");

  // special declaration keywords
  const constValue = 123;
  // const int constValue = 123;
  final finalValue = 456;
  // final int finalValue = 435;

  /* FUN PART */
  const List<int> constList = [10,20,30];
  // constList.add(40);   // not allowed
  // print("ConstList : $constList");
  // final List<int> constList = const [10,20,30];
  // constList.add(10);

  final List<int> finalList = [10,20,30];
  // finalList.add(40);
  // finalList.remove(20);
  // print("FinalList : $finalList");

  // num

  // num is the parent class for int and double
  num myNum = 10.5;
  print(myNum.abs()); // 10.5
  print(myNum.ceil()); // 11
  print(myNum.floor()); // 10
  print(myNum.round()); // 11
  print(myNum.toInt()); // 10
  print(myNum.toDouble()); // 10.5

  // int

  // int is a subtype of num
  int myInteger = 10;
  print(myInteger.isEven); // true
  print(myInteger.isOdd); // false
  print(myInteger.bitLength); // 4
  print(myInteger.gcd(2)); // 2
  print(myInteger.toDouble()); // 10.0

  // double

  // double is a subtype of num
  double myDoubleValue = 10.5;
  print(myDoubleValue.isFinite); // true
  print(myDoubleValue.isInfinite); // false
  print(myDoubleValue.abs()); // 10.5
  print(myDoubleValue.ceil()); // 11
  print(myDoubleValue.floor()); // 10
  print(myDoubleValue.round()); // 11
  print(myDoubleValue.toInt()); // 10

  // String

  // String is a sequence of UTF-16 code units
  String myStr = "Hello, Dart!";
  print(myStr.length); // 12
  print(myStr.isEmpty); // false
  print(myStr.toLowerCase()); // hello, dart!
  print(myStr.toUpperCase()); // HELLO, DART!
  print(myStr.substring(0, 5)); // Hello
  print(myStr.contains('Dart')); // true
  print(myStr.replaceAll('Dart', 'Flutter')); // Hello, Flutter!
  print(myStr.split(', ')); // [Hello, Dart!]
  print(myStr.trim()); // Hello, Dart!

  // List

  // List is an ordered collection of items
  List<int> myNumList = [1, 2, 3];
  myNumList.add(4);
  print(myNumList); // [1, 2, 3, 4]
  myNumList.remove(2);
  print(myNumList); // [1, 3, 4]
  myNumList.insert(1, 2);
  print(myNumList); // [1, 2, 3, 4]
  print(myNumList.contains(3)); // true
  print(myNumList.map((e) => e * 2)); // (2, 4, 6, 8)
  print(myNumList.where((e) => e > 2)); // (3, 4)
  print(myNumList.reduce((a, b) => a + b)); // 10

  // Map

  // Map is a collection of key-value pairs
  Map<String, int> myNumMap = {'one': 1, 'two': 2};
  myNumMap['three'] = 3;
  print(myNumMap); // {one: 1, two: 2, three: 3}
  myNumMap.remove('two');
  print(myNumMap); // {one: 1, three: 3}
  print(myNumMap.containsKey('one')); // true
  print(myNumMap.containsValue(3)); // true
  myNumMap.forEach((k, v) => print('$k: $v')); // one: 1, three: 3
  myNumMap.clear();
  print(myNumMap.isEmpty); // true

  // Set

  // Set is an unordered collection of unique items
  Set<String> myStringSet = {'Dart', 'Flutter'};
  myStringSet.add('Programming');
  print(myStringSet); // {Dart, Flutter, Programming}
  myStringSet.remove('Dart');
  print(myStringSet); // {Flutter, Programming}
  print(myStringSet.contains('Flutter')); // true
  Set<String> anotherStringSet = {'Flutter', 'Coding'};
  print(myStringSet.union(anotherStringSet)); // {Flutter, Programming, Coding}
  print(myStringSet.intersection(anotherStringSet)); // {Flutter}
  print(myStringSet.difference(anotherStringSet)); // {Programming}

  // Generics (e.g., List<int>)

  // List<int> is a list of integers
  List<int> genericList = [1, 2, 3];
  genericList.add(4);
  print(genericList); // [1, 2, 3, 4]
  genericList.remove(2);
  print(genericList); // [1, 3, 4]
  genericList.insert(1, 2);
  print(genericList); // [1, 2, 3, 4]
  print(genericList.contains(3)); // true
  print(genericList.map((e) => e * 2)); // (2, 4, 6, 8)
  print(genericList.where((e) => e > 2)); // (3, 4)
  print(genericList.reduce((a, b) => a + b)); // 10
}
