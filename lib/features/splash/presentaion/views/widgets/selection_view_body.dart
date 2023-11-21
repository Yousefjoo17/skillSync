import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stud/constants.dart';
import 'package:stud/core/utils/app_router.dart';
import 'package:stud/features/splash/presentaion/views/widgets/selection_Widget.dart';

class SelectionViewBody extends StatelessWidget {
  const SelectionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SelectionWidget(
          color: kColor3,
          text: "Student Activity",
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kWelcomeStudent);
          },
        ),
        SelectionWidget(
          color: kColor2,
          text: "Student",
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kWelcomeActivity);
          },
        )
      ],
    ));
  }
}
