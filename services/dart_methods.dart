class Area {

  double? x , y;

  //Area(this.x, this.y);

  // basic method. Like java
  double circleArea (double radius) {
      return 3.14*(radius*radius);
  }

  double triangleArea(double base ,double high) {
    return 0.5*(base * high);
  }
  // private method
  int _squareArea(double base ,double high) => (base * high).toInt(); // convert double to int

  set pointX(double x) => this.x = x;

  set pointY(double y) => this.y = y;

}

/*
 Typedef, or a function-type alias,
 helps to define pointers to executable code within memory.
*/

class UnderstandTypedef {
  // let me define the functions (seem like method but not set type).
  add(int f,int s){
    print("Add result is ${f+s}");
  }
  subtract(int f,int s){
    print("Subtract result is ${f-s}");
  }
  divide(int f,int s){
    print("Divide result is ${f/s}");
  }
  multiply(int f,int s) {
    return f*s;
  }
  factorial(int x) {
    if (x == 1 ) return 0;
    int result = 1;
    for (int i =  x ; i >= 1 ; i --) {
      result *= i;
    }
    return result;
  }

}

class Student {

  String? fullname;
  int? age;

  Student(this.fullname, this.age);

  Student.secondConstructor(){
    fullname = "";
    age = 18;
  }

  /*
  Return_type get identifier {  }
  */
  String? get studentFullname {
    return fullname;
  }
  // Setter look like!!
  /*
  set identifier { }
  */
  void set studentFullname(String? fullname) {
    this.fullname = fullname;
  }
  // Getter
  int? get studentAge {
    return age;
  }
  // Setter
  void set studentAge(int? age) {
    this.age = age;
  }

  demoStudents() {
    List<Student> students = [];
    students.add(Student("Peter Parker", 20));
    students.add(Student("Alex Ryder", 20));
    students.add(Student("Mark Ryder", 20));
    return students;
  }

  @override
  String toString() {
    return 'Student{fullname: $fullname, age: $age}';
  }
}

// *** my typedef (function signature)
typedef MyMath(int f,int s);
typedef MyMath2(int x);
typedef MyStudents();


main () {
  var understandTypedef = UnderstandTypedef();
  var student = Student
      .secondConstructor(); // new object class and call named constructor
  // we will invoke the function via typedef.Declare a variable of the MyMath type.
  MyMath myMath; // The myMath variable can point to any method which takes two integer parameters.
  MyMath2 myMath2;
  MyStudents myStudents;
  // we can point to any method of same signature
  myMath = understandTypedef.add;
  // myMath(5,5);
  myMath = understandTypedef.subtract;
  // myMath(5,5);
  myMath = understandTypedef.divide;
  // myMath(5,5);
  // can return
  myMath = understandTypedef.multiply;
  // var twoMultiplyTwo = myMath(2,2);
  myMath2 = understandTypedef.factorial;
  // print("5! = ${myMath2(5)}");

  myStudents = student.demoStudents;

  // Not clear but using call() this was worked for convert to the real type !!
  // print(myStudents); // Closure: () => dynamic from Function 'demoStudents':.
  print(myStudents.call()); // [Student{fullname: Peter Parker, age: 20}, Student{fullname: Alex Ryder, age: 20}, Student{fullname: Mark Ryder, age: 20}]

  List<Student> studentsList = myStudents.call();
  print(studentsList.elementAt(0)); // Student{fullname: Peter Parker, age: 20}

}