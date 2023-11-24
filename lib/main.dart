import 'package:flutter/material.dart';
import 'package:stud/core/utils/SyncSkillDB.dart';
import 'package:stud/core/utils/app_router.dart';
import 'package:stud/features/student/presentation/view_models/student_modal.dart';

late SqlDb sqlDb;
final StudentModel studentModel = StudentModel();

void main() {
     sqlDb = SqlDb();
  runApp(const SkillSync());
}

class SkillSync extends StatelessWidget {
  const SkillSync({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          // textTheme: GoogleFonts.montserratTextTheme(),
          ),
      title: 'SkillSync',
    );
  }
}
