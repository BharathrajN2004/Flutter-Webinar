Future<void> main() async {
   List<dynamic>  k = [ future1(), future2(), future3()];

  print(k);
}

  // List<dynamic> k = await Future.wait([future1(), future2(), future3()]);

Future<String> future1() async {
  await Future.delayed(Duration(milliseconds: 300));
  
  return ("future 1");
}

Future<String> future2() async {
  await Future.delayed(Duration(milliseconds: 200));
   return ("future 2");
}

Future<String> future3() async {
  await Future.delayed(Duration(milliseconds: 500));
 return ("future 3");
}


void sampleEventQueueTask1() {
  print('first');

  Future(
    () => print('second'),
  );

  print('third');
}

void sampleEventQueueTask2() {
  print('first');

  Future(
    () => print('second'),
  );

  Future.microtask(
    () => print('third'),
  );
  Future.microtask(
    () => print('fifth'),
  );
  print('fourth');
}

void sampleEventQueueTask3() {
  print('first');

  Future(
    () => print('second'),
  ).then(
    (value) => print('third'),
  );

  Future(() => print('fourth'));
  print('fifth');
}
