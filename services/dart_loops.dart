learnForIn() {
  List<int> numbers = [10,9,8,7,6,5,4,3];
  for(int hold in numbers) {
    print(hold);
  }
}

leanForLoop() {
  int end = 10;
  for (int count = 1; count <= end; count++) {
    print(count);
  }
}

leanWhileLoop() {
  int end = 10, count = 1;
  while (count <= end) {
    // same java
    print(count);
    count++;
  }
}

leanDoWhileLoop() {
  int end = 10, count = 1;
  do {
    print(count);
    count++;
  } while (count <= end);
}

leanForLoopHasArg(int init) {
  /*
  for (initial_count_value ; termination-condition ; step) {  **** same Java
   // statements
  }
  */
  int end = 10;
  for (int count = init; count <= end; count++) {
    print(count);
  }
}

learnForLoopFactorialHasReturn(int number) {
  int factorial = 1;
  for (int count = 1; count <= number; count++) {
    factorial = factorial * count;
  }
  return factorial;
}

learnSwitchCase(int age) {
  switch (age) {
    case >= 0 && <= 18:
      {
        return "young";
      }
      break;
    case > 18 && <= 30:
      {
        return "men";
      }
      break;
    default:
      {
        return "old";
      }
  }
}
