

import 'dart:collection';

variableTypes() {

  // Variables Types
  int a = 5, b = 5; // for stores integer
  double c = 5.1; // for stores decimal
  num e = 5.5; // for stores decimal
  bool check = true; // for stores boolean
  String firstname = "Alex", lastname = "Ryder"; // for stores text


  // Variables
  var year = '2023';
  var seconds = [7.7 , 7.6 , 7.5]; // use var type can be list (like array)
  var today = { // use var type can be object (can be difference values type)
    'day' : 'Sunday' ,
    'month' : '04',
    'year' : '2024',
    'time' : 57450
  };

  // Declaration of List
  // if you wan to use add() just use [] for your list
  var months = [];
  months.add("Sep");
  months.add("June");
  // Or
  List<String> models = [];
  models.add("Yaris Sport 2021");

  List<String> brands = new List<String>.filled(2,"null");
  brands[0] = "Toyota";

  /*List<String> days = new List<String>.filled(3, "");
  days[0] = "monday";
  days[1] = "tuesday";
  days[2] = "friday";*/

  // Declaration of Set
  Set<int> ages = {21,22,23,24};

  // Declaration of Queue
  Queue<String> saysHi = new Queue();
  saysHi.add("Hello");
  saysHi.add("What's up");
  saysHi.add("How are you");

  // Dynamic Type Variable seem like var but can change type in the runtime
  dynamic luckyKey = 5;

  // The Final and Const keyword are used to declare constants
  // Final keyword Without data type & with data type
  final aid  = '123-456';
  final String bid  = '123-456';

  // Const keyword Without data type & with data type
  const cid  = '123-456';
  const String did  = '123-456';

  // Type Test Operators "is"
  // print(luckyKey is int); // true

  /*
  print(luckyKey);
  luckyKey = "Difference";
  print(luckyKey);

  print("$aid $bid");

  print("$cid $did");

  print('$a + $c = ${a + c}');
  print("$firstname $check");
  print("${seconds[0]}");
  print("${today.values}"); // (Sunday, 04, 2024)

  print("${today['time']}"); // Sunday [access by using key]
  */
  // print("$days"); // [monday, tuesday, friday]
  // print("${ages.elementAt(0)}"); // for Set<Data Type> class we use elementAt(...) for getting element
  // print("${saysHi.elementAt(0)}"); // Set & Queue getting element the same way
}


