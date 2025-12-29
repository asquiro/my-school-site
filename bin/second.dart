class Person {
  String? _name;
  int? _age;
  String? _religion;
  String? _sex;

  Person({String? name, int? age, String? religion, String? sex});

  set name(String value) {
    _name = value;
  }

  set age(int value) {
    _age = value;
  }

  set religion(String value) {
    _religion = value;
  }

  set sex(String value) {
    _sex = value;
  }

  String? get name => _name;
  int? get age => _age;
  String? get religion => _religion;
  String? get sex => _sex;
}

class Student extends Person {
  bool _voted = false;
  String? _regNo;
  String? _courseOfStudy;
  String? _faculty;

  set voted(bool value){
    _voted = value;
  }
  set regN(String value) {
    _regNo = value;
  }

  set course(String value) {
    _courseOfStudy = value;
  }

  set faculty(String value) {
    _faculty = value;
  }

  String displayStud() {
    return 'student name: $name, age: $age, religion: $religion, sex: $sex';
  }

bool get voted {
    return _voted;
}
  String? get faculty => _faculty;
  String? get course => _courseOfStudy;
  String? get registrationNo => _regNo;
}

class Teacher extends Person {
  int _votes = 0;
  String? _courseAllocation;
  String? _academicQualification;

  set vote(int value) {
    _votes = value;
  }

  set courseAllocation(String value) {
    _courseAllocation = value;
  }

  set academicQual(String value) {
    _academicQualification = value;
  }

  String displayTeacher() {
    return 'teacher name: $name, age: $age, religion: $religion, sex: $sex';
  }

  String voteResult(){
    return '$name has $vote';
  }


  String teachersName() {
    return 'name: $name, courseAllocation: $courseAllocation';
  }

  int get vote => _votes;
  String? get courseAllocation => _courseAllocation;
  String? get academicQualification => _academicQualification;
}
