typedef abc = int ;
void main() {
  
  Iterable<int> iterable = [1, 2, 3];
  final numbers = <int>[1, 2, 3, 5, 6, 7,];
  var result = numbers.firstWhere((element) {
    return element<5;
  }); // 1
  print(result);
  // result = numbers.lastWhere((element) => element > 5);
  // print(result);
}


// for loops
// while and do while loops
// break and continue

// Branching, like if and switch , if case
// Exceptions, like try, catch, and throw


// if 
// int number = 25;

//   if (number < 0) {
//     print('The number is negative.');
//   } else if (number == 0) {
//     print('The number is zero.');
//   } else if (number > 0 && number <= 10) {
//     print('The number is between 1 and 10.');
//   } else if (number > 10 && number <= 20) {
//     print('The number is between 11 and 20.');
//   } else {
//     print('The number is greater than 20.');
//   }

// case
// String day = 'Wednesday';

//   switch (day) {
//     case 'Monday':
//       print('It\'s Monday, start of the work week!');
//       break;
//     case 'Tuesday':
//       print('It\'s Tuesday, second day of the work week.');
//       break;
//     case 'Wednesday':
//       print('It\'s Wednesday, middle of the work week.');
//      
//     case 'Thursday':
//       print('It\'s Thursday, almost the weekend!');
//       break;
//     case 'Friday':
//       print('It\'s Friday, last work day before the weekend!');
//       break;
//     case 'Saturday':
//       print('It\'s Saturday, weekend time!');
//       break;
//     case 'Sunday':
//       print('It\'s Sunday, rest day before the week starts.');
//       break;
//     default:
//       print('Invalid day.');
//   }






// for:

  // var message = StringBuffer('Dart is fun');
  // for (var i = 0; i < 5; i++) {
  //   message.write('!');
  // }
  // print(message);

  // List collection = [1, 2, 3];
  // for (var i in collection) {
  //   print(i);
  // }

  // collection.forEach((v) {
  //   print(v);
  // });

  // collection.forEach(print);


/// while

//   int i = 1;
//   while (i <= 5) {
//     print(i);
//     ++i;
//   }


/// do while

//   int i = 10;
// print("Dart do-while loop example");

// do{

//         print(i);
//         i++;

// }while(i<=20);

/// Iterable

  // Iterable<int> iterable = [1, 2, 3];
  // final numbers = <int>[1, 2, 3, 5, 6, 7,];
  // var result = numbers.firstWhere((element) => element < 5); // 1
  // result = numbers.lastWhere((element) => element > 5);


