import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:stud/constants.dart';
import 'package:stud/core/methods/Custom_Box_Decoration.dart';
import 'package:stud/core/methods/show_snack_bar.dart';
import 'package:stud/core/utils/assets_data.dart';
import 'package:stud/core/widgets/custom_button.dart';
import 'package:stud/core/widgets/custom_text_field.dart';
import 'package:stud/main.dart';

class ActivitySurveyViewBody extends StatefulWidget {
  const ActivitySurveyViewBody({super.key});

  @override
  State<ActivitySurveyViewBody> createState() => _ActivitySurveyViewBodyState();
}

class _ActivitySurveyViewBodyState extends State<ActivitySurveyViewBody> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        body: Container(
          decoration:
              customBoxDecoration([Colors.white, Colors.white, kColor3]),
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
                    "tell us about your organization to insert it",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 40),
                CustomTextField(
                  hinttext: "oeganization name",
                  onchanged: (p0) {
                    activityModel.name = p0;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hinttext: "city",
                  onchanged: (p0) {
                    activityModel.city = p0;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hinttext: "Facebook link",
                  maxLines: 2,
                  onchanged: (p0) {
                    activityModel.fb = p0;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hinttext: "Linkedin link",
                  maxLines: 2,
                  onchanged: (p0) {
                    activityModel.linkedin = p0;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hinttext: "preferd major of studying",
                  onchanged: (p0) {
                    activityModel.majors = p0;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hinttext: "preferd skills eg:programming, leadership",
                  onchanged: (p0) {
                    activityModel.skills = p0;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hinttext: "oranization goal",
                  maxLines: 3,
                  onchanged: (p0) {
                    activityModel.goal = p0;
                  },
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hinttext: "prefered weekly hours",
                  keyboardType: TextInputType.number,
                  onchanged: (p0) {
                    activityModel.weeklyH=int.tryParse(p0);
                  },
                ),
                const SizedBox(height: 20),
                CustomButton(
                  text: "submit",
                  ontap: () async {
                    await sqlDb.insertActivity(activityModel);
                    print("=================================================");

                    await sqlDb.printActivityListInfo();
                    showmySnackBar(context,
                        "your organization has been added successfully");
                    GoRouter.of(context).pop();
                  },
                  color: kColor1,
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
