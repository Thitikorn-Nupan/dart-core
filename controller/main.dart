/* Importing a library */
import 'dart:collection';
import 'package:test/test.dart';
import 'package:logging/logging.dart';

import '../services/dart_exception.dart';
import '../services/dart_methods.dart';
import '../services/dart_variable.dart'; // way to import another dart file (Like, (ES module) js) Now you can use any functions on this dart file.
import '../services/dart_standard_input.dart';
import '../services/dart_loops.dart';
import '../services/dar_lambdas.dart';
import '../entities/student.dart';
import '../entities/employee.dart';
import '../entities/response.dart';
import '../log/logging.dart';
// *** define a library with a private function.
// import '../log/logging.dart' as ttknpdevLogger;
import '../libraries/logging.dart';



main() {

  /** Every app requires the top-level main() function, where execution starts. */

  /* Variable Types & Loops */
  // variableTypes();
  // plusNumber();
  // learnForIn();
  // leanForLoop();
  // leanWhileLoop();
  // leanDoWhileLoop();
  // leanForLoopHasArg(5);
  // print("5! = ${learnForLoopFactorialHasReturn(5)}");
  // print(learnSwitchCase(45));

  /* Lambda */
  // ttknpdevPrint("Dart language");
  // print(plus10(790));

  /* Entities & Classes */
  // List<String> skills = ["Java & Spring Boot","JavaScript & Node.js","Angular & Java/Spring Boot / JavaScript & Node.js"];
  // Student student = new Student("Peter Parkers", 32, skills);
  // print(student); // Student{fullname: Peter Parkers, age: 32, skills: [Java & Spring Boot, JavaScript & Node.js, Angular & Java/Spring Boot / JavaScript & Node.js]}

  // ***** new keyword it's not importance for new object in Dart
  // Queue<String> skills2 = new Queue();
  // skills2.addAll(skills); // convert list to queue
  // Employee employee;
  // Employee employee = Employee("E001", "Alex Ryders", 32, 29000.01, null);
  // print(employee); // Employee{_eid: E001, _fullname: Alex Ryders, _age: 32, _salary: 29000.01, _skills: {Java & Spring Boot, JavaScript & Node.js, Angular & Java/Spring Boot / JavaScript & Node.js}}
  // print(employee.skills?.elementAt(0)); // *** ? can be null (Same kotlin)
  // ***** can use var keyword for Instance of the class
  // Queue<String> skills3 = new Queue();
  // skills3.addAll(["Java & Spring Boot", "JavaScript & Node.js"]); // convert list to queue
  // var employee = Employee("E001", "Alex Ryders", 32, 29000.01, skills3);
  // print(employee);
  // ***** work with entity
  // Queue<Student> students = Queue();
  // students.addAll([
  //   Student("Peter Parkers", 22, skills) ,
  //   Student("Alex Ryder", 21, skills) ,
  //   Student("Mark Swo", 23, null)
  // ]);
  //
  // List<Employee> employees = [];
  // employees.add(Employee("E001", "Peter Parkers", 22, 35000.01, skills3));
  // employees.add(Employee("E002", "Alex Ryder", 21, 33000.01, null));
  // print(employees);
  // var response = Response<List<Employee>>(employees,"accepted","202");
  // print(response);

  // var response = Response<String>("How are you today?","accepted","202");

  /* Test Library/Dependency from pubspec.yml */
  // *** First Logger
  // MyLogging myLogging = MyLogging("example_logger");
  // myLogging.logger?.log(Level.WARNING,"$response");


 //  MathWithExceptions mathWithExceptions = MathWithExceptions();

  // *** Second Logger
  // MyLogging2.setLogger("example_logger");
  // MyLogging2.logger?.log(Level.INFO,"${mathWithExceptions.minus(-2)}");

  // *** Third Logger Apply with The Cascade operator (..)
  // MyLogging3()
  // ..setLogConsole()
  // ..setLogName("example_logger");

  // MyLogging3.logger?.log(Level.SHOUT,mathWithExceptions.minus(1));

  /* Methods */
  var area = Area();
  area.pointX = 1.0;
  area.pointY = -1.0;

  // MyLogging3.logger?.info("radius 6 cm. == ${area.circleArea(6.00)} cm^2.");
  // MyLogging3.logger?.info("(${area.x},${area.y})");

  // *** Fourth Logger
  // var log = ttknpdevLogger.MyLogging("example_logger").logger;
  // ttknpdevLogger.MyLogging3()
  // ..setLogConsole()
  // ..setLogName("example_logger");
  // var log = ttknpdevLogger.MyLogging3.logger;
  // log?.info("(${area.x},${area.y})");


  Logging()
  ..setLogConsole()
  ..setLogName("example_logger");

  var log = Logging.logger;


  /*
    **** Unit Testing
  */
  // test one logic
  // test("check circleArea(x) method", () {
  //   double expected =  113.04;
  //
  //   double actual = area.circleArea(6);
  //
  //   expect(actual, expected); // (real , expected)
  //
  // });
  // test group logic
  group("check all methods in Area class", () {
    test("check circleArea(radius) method", () {
      double expected =  113.04;

      double actual = area.circleArea(6);

      expect(actual, expected); // (real , expected)

    });
    test("check triangleArea(base,high) method", () {
      double expected =  12.5;

      double actual = area.triangleArea(5,5);

      expect(actual, expected); // (real , expected)
    });
  });

  /*
  00:00 +0: check all methods in Area class check circleArea(radius) method
  00:00 +1: check all methods in Area class check triangleArea(base,high) method
  00:00 +2: All tests passed!
  */

}
