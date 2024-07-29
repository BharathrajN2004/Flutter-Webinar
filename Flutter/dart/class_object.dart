void main() {
  // Assignment Operator
  int? a;
  a ??= 10;
  a ??= 20;
  print(a);

  //  conditional Operator

  a == 10 ? print("a is 10") : print("a is 20");

  print(a ?? "20");

  List<int>? numbers1 = [1, 2, 3];
  List<int>? numbers2 = null;
  List<int>? numbers3 = [4, 5, 6];
  List k = [...numbers1, ...?numbers2, ...numbers3];
  print(k);
}
  

// Class Structure

//  class ClassName {
//     <fields> - static , final , const  , this,  super
//     <getter/setter>
//     <constructor>
//     <functions>
// }


// class Hari {}
  // Hari a = Hari();
  // Hari b = Hari();
  // print(a.runtimeType);
  // print(a);
  // print(a.runtimeType == b.runtimeType);

// class Teacher {
//   int a = 10;
// }


// class Student extends Teacher {
//   var stdName;
//   var stdAge;
//   var stdRoll_nu;
//   static int count = 0; 
//   get name => this.stdName;
//   //  paremeterized cons
//   Student({required String name, required int age}) {
//     // print(super.a);
//     // print(name);
//     // print(age);
//     count += 1;
//   }

//   // named const
//   Student.hello() : this.welcome();
//  // calling super class
//   Student.name()
//       : stdAge = 20,
//         super();
//   //  it's possible

//   Student.welcome() {
//     print("This is welcome class");
//   }

//   // defining class function
//   showStdInfo() {
//     print("Student Name is : ${stdName}");
//     print("Student Age is : ${stdAge}");
//     print("Student Roll Number is : ${stdRoll_nu}");
//   }

// }

// class Person {
//   String? name;
//   int? age;

//   void greet() {
//     print("Hello, my name is $name.");
//   }
// }

// void main() {
//   Person? person;

//   // This won't call greet() because person is null
//   person?..greet();

//   person = Person()
//     ..name = "Alice"
//     ..age = 30;

//   // This will call greet() because person is not null
//   person?..greet(); // Output: Hello, my name is Alice.
// }



  // Student student = Student(name: "afd", age: 20);
  // student.stdAge = 90;
  // print(student.stdAge);
  // Student stu = Student.hello();
  // Student st1 = Student(name: ' name', age: 1);

  // Student st2 = Student(name: ' name', age: 1);
  


// Factory  Constructors

// class Singleton {
//   // Private static variable to hold the single instance
//   static Singleton _instance;

//   // Private constructor to prevent external instantiation
//   Singleton._internal();

//   // Factory constructor to control instance creation
//   factory Singleton() {
//     if (_instance == null) {
//       _instance = Singleton._internal();
//     }
//     return _instance;
//   }

//   void showMessage() {
//     print('Singleton instance!');
//   }
// }

// void main() {
//   var s1 = Singleton();
//   var s2 = Singleton();

//   s1.showMessage(); // Output: Singleton instance!
//   print(s1 == s2); // Output: true (both are the same instance)
// }




// Mixins

// mixin Dancer {
//   void dance() {
//     print("Dancing...");
//   }
// }

// mixin Singer {
//   void sing() {
//     print("Singing...");
//   }
// }

// class Performer with Singer, Dancer {
//   String name;

//   Performer(this.name);
// }


//  mixin constarinsts
// class Performer {
//   void perform() {
//     print("Performing...");
//   }
// }

// mixin Singer on Performer {
//   void sing() {
//     print("Singing...");
//   }
// }

// class LeadSinger extends Performer with Singer {}

// void main() {
//   var leadSinger = LeadSinger();
//   leadSinger.perform(); // Outputs: Performing...
//   leadSinger.sing(); // Outputs: Singing...
// }



// Enums

// enum Day {
//   Monday,
//   Tuesday,
//   Wednesday,
//   Thursday,
//   Friday,
//   Saturday,
//   Sunday
// }


// enum Color {
//   Red,
//   Green,
//   Blue;

//   // Method to get the RGB value of the color
//   String get rgb {
//     switch (this) {
//       case Color.Red:
//         return "#FF0000";
//       case Color.Green:
//         return "#00FF00";
//       case Color.Blue:
//         return "#0000FF";
//     }
//   }
// }


//   Color myColor = Color.Green;
//   print("RGB value of Green is: ${myColor.rgb}");

// Extension methods

// print('42'.parseInt())
// extension NumberParsing on String {
//   int parseInt() {
//     return int.parse(this);
//   }
// }



