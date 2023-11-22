import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stud/constants.dart';
import 'package:stud/core/methods/Custom_Box_Decoration.dart';
import 'package:stud/core/utils/app_router.dart';
import 'package:stud/core/widgets/custom_button.dart';
import 'package:stud/core/widgets/custom_text_field.dart';

class StudentQ2view extends StatelessWidget {
  const StudentQ2view({super.key});

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
                  "tell us about your skills and intersts",
                  style: TextStyle(fontSize: 28),
                ),
              ),
              const SizedBox(height: 60),
              const CustomTextField(
                hinttext:
                    "what skills or takents you posess? eg:e.g., programming, public speaking,",
                maxLines: 3,
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hinttext:
                    "Are there specific skills you would like to develop further?",
                maxLines: 3,
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                  hinttext:
                      "What are your hobbies or interests outside of academics?",
                  maxLines: 3),
              const SizedBox(height: 20),
              CustomButton(
                text: "continue",
                ontap: () {
                  GoRouter.of(context).push(AppRouter.kStudentq3);
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
