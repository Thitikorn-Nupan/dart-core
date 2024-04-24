/*
  *** Understand Getters and Setters,
  Auto generate
  Dart doesn't have the keywords public , protected , and private .
  ** If an identifier starts with an underscore ( _ ), it's private
*/
import 'dart:collection';

class Employee {

  String? _eid; // ? meaning => initially null.
  String? _fullname;
  int? _age;
  num? _salary;
  Queue<String>? _skills;

  Employee(this._eid, this._fullname, this._age, this._salary,this._skills);


  num? get salary => _salary;

  set salary(num? value) {
    _salary = value;
  }

  int? get age => _age;

  set age(int? value) {
    _age = value;
  }

  String? get fullname => _fullname;

  set fullname(String? value) {
    _fullname = value;
  }

  String? get eid => _eid;

  set eid(String? value) {
    _eid = value;
  }


  Queue<String>? get skills => _skills;

  set skills(Queue<String>? value) {
    _skills = value;
  }

  @override
  String toString() {
    return 'Employee{_eid: $_eid, _fullname: $_fullname, _age: $_age, _salary: $_salary, _skills: $_skills}';
  }
}