import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stud/core/methods/Custom_Box_Decoration.dart';
import 'package:stud/core/utils/app_router.dart';
import 'package:stud/core/utils/assets_data.dart';
import 'package:stud/features/splash/presentaion/views/widgets/sliding_text.dart';

class IntroViewBody extends StatefulWidget {
  const IntroViewBody({super.key});

  @override
  State<IntroViewBody> createState() => _IntroViewBodyState();
}

class _IntroViewBodyState extends State<IntroViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController; //0:1
  late Animation<Offset> slidingAnimation; //0: .......
  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigateToSelection();
  }

  @override
  void dispose() {
    // whenever you use controller use dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: customBoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              AssetsData.kLogo,
              height: 186,
            ),
            const SizedBox(height: 6),
            SlidingText(
              slidingAnimation: slidingAnimation,
              text: 'match your passion and skills',
            ),
          ],
        ),
      ),
    );
  }

/////////////////////////////////////////////////////////////////////////////

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void navigateToSelection() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push(AppRouter.kSelectionView);
    });
  }
}
