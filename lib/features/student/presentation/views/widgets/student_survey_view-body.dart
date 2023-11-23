import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stud/constants.dart';
import 'package:stud/core/methods/Custom_Box_Decoration.dart';
import 'package:stud/core/utils/app_router.dart';
import 'package:stud/core/utils/assets_data.dart';
import 'package:stud/core/widgets/custom_button.dart';
import 'package:stud/core/widgets/custom_text_field.dart';

class StudentSurveyViewBody extends StatelessWidget {
  const StudentSurveyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: customBoxDecoration([Colors.white, Colors.white, kColor3]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView(
            children: [
              const SizedBox(height: 50),
              Image.asset(
                AssetsData.kMale,
                height: 120,
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  "tell us about you",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hinttext: "name",
                onchanged: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hinttext: "city",
                onchanged: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hinttext: "major of studying",
                onchanged: (p0) {},
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hinttext: "your skills  eg:programming, public speaking",
                maxLines: 2,
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hinttext:
                    "skills you want to develop eg:programming, public speaking",
                maxLines: 2,
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hinttext: "hobbies and interests",
                maxLines: 2,
              ),
              const SizedBox(height: 20),
              const CustomTextField(hinttext: "goals", maxLines: 3),
              const SizedBox(height: 20),
              const CustomTextField(
                hinttext: "weekly available time",
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "Register",
                ontap: () {
                  GoRouter.of(context).push(AppRouter.kStudentView);
                },
                color: kColor1,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
