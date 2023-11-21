import 'package:flutter/material.dart';
import 'package:stud/core/utils/app_router.dart';

void main() {
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