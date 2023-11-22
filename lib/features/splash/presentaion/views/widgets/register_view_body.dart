import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:stud/constants.dart';
import 'package:stud/core/utils/app_router.dart';
import 'package:stud/core/utils/assets_data.dart';
import 'package:stud/core/widgets/custom_button.dart';
import 'package:stud/core/widgets/custom_text_field.dart';

class RegisterViewBody extends StatefulWidget {
  const RegisterViewBody({super.key});

  @override
  State<RegisterViewBody> createState() => _RegisterViewBodyState();
}

class _RegisterViewBodyState extends State<RegisterViewBody> {
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
              child: Column(
                children: [
                  const SizedBox(height: 45),
                  Image.asset(
                    AssetsData.kStudentMale,
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
                  const SizedBox(height: 60),
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
                  const SizedBox(height: 15),
                  CustomTextFieldPassword(
                    hinttext: 'Re enter password',
                    onchanged: (data) {},
                    obsecuretext: true,
                  ),
                  const SizedBox(height: 30),
                  CustomButton(
                    text: 'Register',
                    color: kColor1,
                    ontap: () {
                      GoRouter.of(context).push(AppRouter.kSelectionView);
                    },
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          GoRouter.of(context).push(AppRouter.kLogin);
                        },
                        child: Text(
                          'Log in ',
                          style: TextStyle(
                            color: kColor2,
                          ),
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
