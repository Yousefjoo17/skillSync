import 'package:stud/constants.dart';

class StudentModel {
  StudentModel({
     this.name,
     this.email,
     this.password,
     this.city,
     this.major,
     this.skills,
     this.goal,
     this.weeklyH,
     this.id,
  });
   int? id;
   String? name;
   String? email;
   String? password;
   String? city;
   String? major;
   String? skills;
   String? goal;
   int? weeklyH;

  factory StudentModel.fromJson(Map<String, dynamic> json) {
    return StudentModel(
      id: json[kStudId] as int,
      name: json[kStudName] as String,
      city: json[kStudCity] as String,
      major: json[kStudMajor] as String,
      skills: json[kStudSkills] as String,
      goal: json[kStudGoal] as String,
      weeklyH: json[kStudweeklyH] as int,
      email: json[kStudEmail] as String,
      password: json[kStudPassword] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      kStudName: name,
      kStudEmail: email,
      kStudPassword: password,
      kStudCity: city,
      kStudMajor: major,
      kStudSkills: skills,
      kStudGoal: goal,
      kStudweeklyH: weeklyH,
    };
  }
}
