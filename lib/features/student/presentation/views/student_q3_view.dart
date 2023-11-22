import 'package:flutter/material.dart';
import 'package:stud/constants.dart';
import 'package:stud/core/methods/Custom_Box_Decoration.dart';
import 'package:stud/core/widgets/custom_button.dart';
import 'package:stud/core/widgets/custom_text_field.dart';

class StudentQ3view extends StatelessWidget {
  const StudentQ3view({super.key});

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
                  "tell us about you goals and commitmens",
                  style: TextStyle(fontSize: 36),
                ),
              ),
              const SizedBox(height: 60),
              const CustomTextField(
                hinttext:
                    "Are there specific goals or aspirations you have for personal or academic growth?",
                maxLines: 4,
              ),
              const SizedBox(height: 20),
              const CustomTextField(
                hinttext:
                    "How much time are you willing to commit to extracurricular activities each week?",
                maxLines: 2,
              ),
              const SizedBox(height: 60),
              CustomButton(text: "continue", ontap: () {}, color: kColor3),
            ],
          ),
        ),
      ),
    );
  }
}
