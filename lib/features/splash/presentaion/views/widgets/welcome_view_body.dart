import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stud/constants.dart';
import 'package:stud/core/utils/app_router.dart';
import 'package:stud/core/utils/assets_data.dart';
import 'package:stud/core/widgets/custom_button.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome in ',
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
                Text(
                  'SkillSync',
                  style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Caveat',
                    fontWeight: FontWeight.w900,
                    color: kColor2,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AssetsData.kYouth,
                  height: 140,
                  width: 140,
                  fit: BoxFit.fill,
                ),
              ],
            ),
            const SizedBox(height: 60),
            CustomButton(
              text: "Register",
              ontap: () {
                GoRouter.of(context).push(AppRouter.kRegister);
              },
              color: kColor1,
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: "Login ",
              ontap: () {
                GoRouter.of(context).push(AppRouter.kLogin);
              },
              color: kColor3,
            ),
          ],
        ),
      ),
    );
  }
}
