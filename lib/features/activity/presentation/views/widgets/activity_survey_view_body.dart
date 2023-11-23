import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stud/constants.dart';
import 'package:stud/core/methods/Custom_Box_Decoration.dart';
import 'package:stud/core/utils/app_router.dart';
import 'package:stud/core/utils/assets_data.dart';
import 'package:stud/core/widgets/custom_button.dart';
import 'package:stud/core/widgets/custom_text_field.dart';

class ActivitySurveyViewBody extends StatelessWidget {
  const ActivitySurveyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: customBoxDecoration([Colors.white, Colors.white, kColor3]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: ListView(
            children: [
              const SizedBox(height: 30),
              Image.asset(
                AssetsData.kActivity,
                height: 100,
              ),
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  "tell us about the organization",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 60),
              CustomTextField(
                hinttext: "oeganization name",
                onchanged: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hinttext: "city",
                onchanged: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hinttext: "Facebook link",
                maxLines: 2,
                onchanged: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hinttext: "Linkedin link",
                maxLines: 2,
                onchanged: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hinttext: "preferd major of studying",
                onchanged: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hinttext: "preferd skills eg:programming, leadership",
                onchanged: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hinttext: "oranization goal",
                maxLines: 3,
                onchanged: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hinttext: "prefered weekly hours",
                keyboardType: TextInputType.number,
                onchanged: (p0) {},
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: "submit",
                ontap: () {
                  GoRouter.of(context).push(AppRouter.kActivityView);
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
