// ignore_for_file: body_might_complete_normally_nullable

/*
  Lean to use interface (write same classes)
  ** Dart does not have a syntax for declaring interfaces.
*/
import 'dart:collection';

// **** I think interfaces are your To Do functions on this app
class Greeting {

  String get sayHi {
    return "hello, i am setter on Greeting class";
  }
  // below are getter , method and them return null
  String? get sayHi2 {}
  sayHi3() {}

}

class Skill {

  Queue<String>? get languages {}

  Queue<String>? get products {}

}

class Programmer implements Greeting, Skill {
  // it can't use sayHi in Greeting class if you use Programmer class
  String get sayHi {
    return "hello, i am setter on Programmer class";
  }

  String? get sayHi2 {
    return "What's up, i am function/method on Programmer class";
  }

  sayHi3() {
    return "Hi! How are you, i am function/method on Programmer class";
  }

  Queue<String>? get languages {
    Queue<String> l = Queue();
    l.add("Java");
    l.add("C/C++");
    l.add("JavaScript");
    l.add("Dart");
    return l;
  }

  Queue<String>? get products {
    Queue<String> p = Queue();
    p.add("Web App JD Sports");
    p.add("Mobile App UNIQUE");
    return p;
  }
}

/*
main() {
  Programmer programmer = Programmer();
  print(programmer.sayHi3());
}
*/
