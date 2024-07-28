import 'dart:async';

void main() {
  
//  class ClassName {
//     <fields> - static , final , const  , this,  super
//     <getter/setter>
//     <constructor>
//     <functions>
// }
  // Hari a = Hari();
  // Hari b = Hari();
  // print(a.runtimeType);
  // print(a);
  // print(a.runtimeType == b.runtimeType);
  // Student student = Student(name: "afd", age: 20);
  // student.stdAge = 90;
  // print(student.stdAge);
  // Student stu = Student.hello();
  // Student st1 = Student(name: ' name', age: 1);

  // Student st2 = Student(name: ' name', age: 1);
  Student st3 = Student(name: ' clin', age: 1);
  print(st3
    ..name
    ..a.toInt());
  var performer = Performer("Bob");
  performer.sing(); // Outputs: Singing...
  performer.dance();
}

class Hari {}

class Student extends Teacher {
  var stdName;
  var stdAge;
  var stdRoll_nu;
  static int count = 0;
  get name => this.stdName;
  //  paremeterized cons
  Student({required String name, required int age}) {
    // print(super.a);
    // print(name);
    // print(age);
    count += 1;
  }

  // named const
  Student.hello() : this.welcome();
  Student.name()
      : stdAge = 20,
        super();
  //  it's possible

  Student.welcome() {
    print("This is welcome class");
  }

  // defining class function
  showStdInfo() {
    print("Student Name is : ${stdName}");
    print("Student Age is : ${stdAge}");
    print("Student Roll Number is : ${stdRoll_nu}");
  }

}

class Teacher {
  int a = 10;
}

// Mixins


mixin Dancer {
  void dance() {
    print("Dancing...");
  }
}

mixin Singer {
  void sing() {
    print("Singing...");
  }
}

class Performer with Singer, Dancer {
  String name;

  Performer(this.name);
}

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


// Extension

// Enums

enum Day {
  Monday,
  Tuesday,
  Wednesday,
  Thursday,
  Friday,
  Saturday,
  Sunday
}


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

// void main() {
//   Color myColor = Color.Green;
//   print("RGB value of Green is: ${myColor.rgb}");
// }

// Enum left overs 

// print('42'.parseInt())
// extension NumberParsing on String {
//   int parseInt() {
//     return int.parse(this);
//   }
// }