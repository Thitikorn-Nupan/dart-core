import 'dart:io'; // for Standard Input

plusNumber () {
  print('put some integer : ');
  String input = stdin.readLineSync()!; // Reading input *** ! meaning : null safety
  int? number = int.parse(input); // convert to int // ? meaning : null safety
  print('$number * 1 = $number');
}