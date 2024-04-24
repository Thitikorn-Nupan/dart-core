/*
  Abstract in dart works like interface java
  *** Remember abs class work with extends keyword
*/
abstract class Switch<T> { // apply with generic type
  // Defines abstract method
  T open();
  T close();
}

class Remote extends Switch<bool> {
  // ***(No auto inherit) you gotta know which abs method you gotta inherit
  bool open() {
    return true;
  }
  bool close() {
    return false;
  }

}

main() {
  bool check = Remote().open();
  print(check);
}