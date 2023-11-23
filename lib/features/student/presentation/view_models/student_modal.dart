import 'package:stud/constants.dart';

class StudentModel {
  StudentModel({
    required this.name,
    required this.email,
    required this.password,
    required this.city,
    required this.major,
    required this.skills,
    required this.goal,
    required this.weeklyH,
    required this.id,
  });
  final int id;
  final String name;
  final String email;
  final String password;
  final String city;
  final String major;
  final String skills;
  final String goal;
  final int weeklyH;

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
}
