import 'dart:ffi';

void main() {
// Different command lines
/* this 
   is multiline comments 
*/
  /// Documentation Comments

  ///  Data Types
//  1. variables , keywords , Operators

// Numbers (int, double)
// Strings (String)
// Booleans (bool)
// Records ((value1, value2))
// Lists (List, also known as arrays)
// Sets (Set)
// Maps (Map)
// Runes (Runes; often replaced by the characters API)
// Symbols (Symbol)
// The value null (Null)

// 1 . Numbers
  num a = 1;
  num b = 1.1;
  int c = 2;
  double d = 3;

  bool e = true;
  Map<int, String> f = {1: "Hari"};
  var g = Object();
  String i = '\u{1f606}';

  String name = "Harish";
  String some = "vimal";
  String ha = 'n vfksvjsfvbsl'
      'jfvl'
      'fkjv'
      'jfewnever';
  var s1 = 'String '
      'concatenation'
      " works even over line breaks.";
  assert(s1 ==
      'String concatenation works even over '
          'line breaks.');
  var record = ('first', a: 'd', b: true, 'last');
  print(record.runtimeType);
  ({int a, int b}) recordAB = (a: 1, b: 2);
  ({int x, int y}) recordXY = (x: 3, y: 4);
  ({String aa, int bb}) m = (aa: "A", bb: 20);
  ({String cc, int dd}) l = (cc: "A", dd: 20);
  (String, int) k = ("f", 2);
  (String, int) kk = ("f", 2);

  print(k == kk);

  //  Collection
  var list = [
    1,
    2,
    3,
  ];
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var namse = {};
  Set<String> j = {};
  var jebkf = <String>{};
  print(jebkf);
  print(namse.runtimeType);
  print([
    2,
    ...[2, 3]
  ]);
  var login = 'Manager';
  print([
    for (int i = 0; i < 20; i++) i,
    if (1 == 1) 1,
    ...['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory' ]
  ]);


  
}


//  Generics , Type def
