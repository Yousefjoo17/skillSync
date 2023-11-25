import 'package:stud/constants.dart';

class ActivityModel {
  ActivityModel({
     this.fb,
     this.linkedin,
     this.name,
     this.city,
     this.majors,
     this.skills,
     this.goal,
     this.weeklyH,
     this.id,
  });
   int? id;
   String? name;
   String? city;
   String? majors;
   String? skills;
   String? goal;
   int? weeklyH;
   String? fb;
   String? linkedin;

Map<String, dynamic> toMap() {
    return {
      kActivityId: id,
      kActivityName: name,
      kActivityCity: city,
      kActivityMajors: majors,
      kActivitySkills: skills,
      kActivityGoal: goal,
      kActivityweeklyH: weeklyH,
      kActivityFB: fb,
      kActivityLinked: linkedin,
    };
  }

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
