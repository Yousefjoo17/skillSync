import 'package:stud/constants.dart';

class ActivityModel {
  ActivityModel({
    required this.fb,
    required this.linkedin,
    required this.name,
    required this.city,
    required this.majors,
    required this.skills,
    required this.goal,
    required this.weeklyH,
    required this.id,
  });
  final int id;
  final String name;
  final String city;
  final String majors;
  final String skills;
  final String goal;
  final int weeklyH;
  final String fb;
  final String linkedin;

  factory ActivityModel.fromJson(Map<String, dynamic> json) {
    return ActivityModel(
      id: json[kActivityId] as int,
      name: json[kActivityName] as String,
      city: json[kActivityCity] as String,
      majors: json[kActivityMajors] as String,
      skills: json[kActivitySkills] as String,
      goal: json[kActivityGoal] as String,
      weeklyH: json[kActivityweeklyH] as int,
      fb: json[kActivityFB] as String,
      linkedin: json[kActivityLinked] as String,
    );
  }
}
