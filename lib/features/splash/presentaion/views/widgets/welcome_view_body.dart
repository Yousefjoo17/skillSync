import 'package:flutter/material.dart';
import 'package:stud/constants.dart';
import 'package:stud/core/utils/assets_data.dart';
import 'package:stud/core/widgets/custom_button.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
          const SizedBox(height: 50),
          CustomButton(
            text: "Register ",
            ontap: () {},
            color: kColor1,
          ),
          const SizedBox(height: 30),
          CustomButton(
            text: "Login ",
            ontap: () {},
            color: kColor3,
          ),
        ],
      ),
    );
  }
}
