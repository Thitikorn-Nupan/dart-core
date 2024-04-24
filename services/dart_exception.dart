import '../exceptions/custom_exceptions.dart';

class MathWithExceptions {

  divide(int x) {
    try {
      /*
        ~/ for Divide, returning an integer result
      */
      return x ~/ x;
    } on IntegerDivisionByZeroException  {
      // A code snippet can have more than one on / catch blocks to handle multiple exceptions.
      print("can't divide by zero");
    }
  }

  divide2(int x) {
    try {
      return x ~/ x;
    } catch (e)  {
      print("cause was : $e");
      throw e; // The throw keyword is used to explicitly raise an exceptions.
    }
  }

  divide3(int x) {
    try {
      return x ~/ x;
    } on IntegerDivisionByZeroException catch (e)  {
      // can use the on...catch block.
      print("cause was : $e");
    }
  }

  minus(int x) {
    // example for applying throw with condition
    // this is my custom exception (new object class and call constructor)
    if (x <= 0) throw NotAllowedException("$x less than zero");
    return x-x;
  }

}

main () {
  try {
    MathWithExceptions().minus(-5);
    // on NotAllowedException
    // i have to set type to be NotAllowedException exception
    // because i have to use cause attribute
  } on NotAllowedException catch (e) {
    // catch () looking for throw <Some Exceptions>
    print(e.cause);
  } finally {
    print("ended process function main()");
  }
}