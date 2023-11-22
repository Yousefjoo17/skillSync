import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stud/constants.dart';
import 'package:stud/core/methods/Custom_Box_Decoration.dart';
import 'package:stud/core/utils/app_router.dart';
import 'package:stud/core/widgets/custom_button.dart';
import 'package:stud/core/widgets/custom_text_field.dart';

class StudentQ1View extends StatelessWidget {
  const StudentQ1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: customBoxDecoration([Colors.white, Colors.white, kColor3]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  "tell us about you",
                  style: TextStyle(fontSize: 36),
                ),
              ),
              const SizedBox(height: 60),
              CustomTextField(
                hinttext: "full name",
                onchanged: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hinttext: "city",
                onchanged: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hinttext: "academic level",
                onchanged: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hinttext: "major field of study",
                onchanged: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "continue",
                ontap: () {
                  GoRouter.of(context).push(AppRouter.kStudentq2);
                },
                color: kColor3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
