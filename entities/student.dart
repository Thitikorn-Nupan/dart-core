/*
 *** Understand Getters and Setters,
 Write on My Own
 Getters or accessors are defined using the get keyword.
 Setters or mutators are defined using the set keyword.
*/
class Student {

  String? fullname;
  int? age;
  List<String>? skills;

  Student(this.fullname, this.age, this.skills); // this is constructor in Dart

  // Getter look like!! **** Focus this is not a method/function right? () it doesn't
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
  // Getter
  List<String>? get studentSkills {
    return skills;
  }
  // Setter
  void set studentSkills(List<String>? skills) {
    this.skills = skills;
  }

  @override
  String toString() {
    return 'Student{fullname: $fullname, age: $age, skills: $skills}';
  }
}