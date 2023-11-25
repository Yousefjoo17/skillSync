import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:stud/constants.dart';
import 'package:stud/features/activity/presentation/view_model/activity_model.dart';
import 'package:stud/features/student/presentation/view_models/student_modal.dart';

class SqlDb {
  static Database? _db;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await intialDb();
      return _db;
    } else {
      return _db;
    }
  }

  intialDb() async {
    String databasepath = await getDatabasesPath();
    String path = join(databasepath, 'SyncSkill.db');
    Database mydb = await openDatabase(path,
        onCreate: _onCreate, version: 1, onUpgrade: _onUpgrade);
    return mydb;
  }

  _onUpgrade(Database db, int oldversion, int newversion) {
    print("onUpgrade =====================================");
  }

  _onCreate(Database db, int version) async {
    await db.execute('''
     CREATE TABLE $ktableStud (
      $kStudId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
      $kStudName TEXT NOT NULL,
      $kStudEmail TEXT NOT NULL,
      $kStudPassword TEXT NOT NULL,
      $kStudCity TEXT NOT NULL,
      $kStudMajor TEXT NOT NULL,
      $kStudSkills TEXT NOT NULL,
      $kStudGoal TEXT NOT NULL,
      $kStudweeklyH INTEGER NOT NULL
    )
  ''');

    await db.execute('''
    CREATE TABLE $ktableActivity (
      $kActivityId INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
      $kActivityName TEXT NOT NULL,
      $kActivityCity TEXT NOT NULL,
      $kActivityMajors TEXT NOT NULL,
      $kActivitySkills TEXT NOT NULL,
      $kActivityGoal TEXT NOT NULL,
      $kActivityweeklyH INTEGER NOT NULL,
      $kActivityFB TEXT NOT NULL,
      $kActivityLinked TEXT NOT NULL
    )
  ''');

    await db.execute('''
    CREATE TABLE $kTablejoint (
      $kStudId INTEGER,
      $kActivityId INTEGER,
      FOREIGN KEY ($kStudId) REFERENCES $ktableStud($kStudId),
      FOREIGN KEY ($kActivityId) REFERENCES $ktableActivity($kActivityId),
      PRIMARY KEY ($kStudId, $kActivityId),
     CHECK (
        $ktableStud.$kStudCity = $ktableActivity.$kActivityCity
        AND ABS($ktableStud.$kStudweeklyH - $ktableActivity.$kActivityweeklyH) <= 2
        AND $ktableStud.$kStudSkills IN ($ktableActivity.$kActivitySkills)
        AND $ktableStud.$kStudMajor IN ($ktableActivity.$kActivityMajors)
      )
    )
  ''');

    print(" onCreate =====================================");
  }

//////////////////////////////////////////////

  Future<bool> isEmailAvailable(String email) async {
    Database? mydb = await db;
    List<Map<String, dynamic>> result = await mydb!.rawQuery(
      'SELECT COUNT(*) as count FROM $ktableStud WHERE $kStudEmail = ?',
      [email],
    );
    int count = Sqflite.firstIntValue(result) ?? 0;
    return count == 0;
  }

  Future<List<StudentModel>> getAllStudents() async {
    Database? mydb = await db;
    List<Map<String, dynamic>> result = await mydb!.query(ktableStud);

    return List.generate(result.length, (index) {
      return StudentModel(
        id: result[index][kStudId],
        name: result[index][kStudName],
        email: result[index][kStudEmail],
        password: result[index][kStudPassword],
        city: result[index][kStudCity],
        major: result[index][kStudMajor],
        skills: result[index][kStudSkills],
        goal: result[index][kStudGoal],
        weeklyH: result[index][kStudweeklyH],
      );
    });
  }

  Future<List<ActivityModel>> getAllActivities() async {
    Database? mydb = await db;
    final List<Map<String, dynamic>> maps = await mydb!.query(ktableActivity);

    // Convert the List of Maps into a List of ActivityModel
    return List.generate(maps.length, (i) {
      return ActivityModel(
        id: maps[i][kActivityId] as int?,
        name: maps[i][kActivityName] as String?,
        city: maps[i][kActivityCity] as String?,
        majors: maps[i][kActivityMajors] as String?,
        skills: maps[i][kActivitySkills] as String?,
        goal: maps[i][kActivityGoal] as String?,
        weeklyH: maps[i][kActivityweeklyH] as int?,
        fb: maps[i][kActivityFB] as String?,
        linkedin: maps[i][kActivityLinked] as String?,
      );
    });
  }

  Future<void> insertStudent(StudentModel student) async {
    Database? mydb = await db;
    await mydb!.insert(
      ktableStud,
      student.toMap(), 
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> insertActivity(ActivityModel activity) async {
    Database? mydb = await db;
    await mydb!.insert(
      ktableActivity,
      activity.toMap(), 
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }


  Future<void> printActivityListInfo() async {
  List<ActivityModel> activityList = await getAllActivities();

  for (ActivityModel activity in activityList) {
    print('Activity ID: ${activity.id}');
    print('Name: ${activity.name}');
    print('City: ${activity.city}');
    print('Majors: ${activity.majors}');
    print('Skills: ${activity.skills}');
    print('Goal: ${activity.goal}');
    print('Weekly Hours: ${activity.weeklyH}');
    print('Facebook: ${activity.fb}');
    print('LinkedIn: ${activity.linkedin}');
    print('------------------------');
  }
}
}

// SELECT 
// DELETE 
// UPDATE 
// INSERT 