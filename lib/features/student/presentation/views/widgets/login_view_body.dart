import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:stud/constants.dart';
import 'package:stud/core/utils/app_router.dart';
import 'package:stud/core/utils/assets_data.dart';
import 'package:stud/core/widgets/custom_button.dart';
import 'package:stud/core/widgets/custom_text_field.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});
  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  bool isLoading = false;
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Form(
            key: formkey,
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Image.asset(
                    AssetsData.kFemale,
                    height: 100,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SkillSync',
                        style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Caveat',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 65),
                  CustomTextField(
                    hinttext: 'Email',
                    onchanged: (data) {},
                  ),
                  const SizedBox(height: 15),
                  CustomTextFieldPassword(
                    hinttext: 'Password',
                    onchanged: (data) {},
                    obsecuretext: true,
                  ),
                  const SizedBox(height: 35),
                  CustomButton(
                    text: 'Log in',
                    color: kColor1,
                    ontap: () {
                      if (formkey.currentState!.validate()) {
                        GoRouter.of(context).push(AppRouter.kStudentView);
                      }
                    },
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an account?',
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kRegister);
                        },
                        child: Text(
                          'Register ',
                          style: TextStyle(color: kColor3),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
