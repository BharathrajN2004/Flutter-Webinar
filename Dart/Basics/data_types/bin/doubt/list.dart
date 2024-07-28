void main() {
  // Final list: the reference cannot be changed, but the contents can be modified
  final List<int> finalList = [1, 2, 3];

  // Adding an element to the list is allowed
  finalList.add(4);
  print(
      'Final List after adding an element: $finalList'); // Output: [1, 2, 3, 4]

  // Modifying an element in the list is allowed
  finalList[0] = 10;
  print(
      'Final List after modifying an element: $finalList'); // Output: [10, 2, 3, 4]

  // Removing an element from the list is allowed
  finalList.removeAt(1);
  print(
      'Final List after removing an element: $finalList'); // Output: [10, 3, 4]

  // Trying to reassign the list will cause an error
  // finalList = [5, 6, 7]; // This line will cause a compile-time error

  /*

    // const 

  */
  // Const list: neither the reference nor the contents can be changed
  const List<int> constList = [1, 2, 3];

  // Trying to add an element to the list will cause an error
  // constList.add(4); // This line will cause a compile-time error

  // Trying to modify an element in the list will cause an error
  // constList[0] = 10; // This line will cause a compile-time error

  // Trying to remove an element from the list will cause an error
  // constList.removeAt(1); // This line will cause a compile-time error

  print('Const List: $constList'); // Output: [1, 2, 3]
}
