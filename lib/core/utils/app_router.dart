import 'package:go_router/go_router.dart';
import 'package:stud/features/activity/presentation/views/welcome_activity_view.dart';
import 'package:stud/features/splash/presentaion/views/intro_view.dart';
import 'package:stud/features/splash/presentaion/views/selection_view.dart';
import 'package:stud/features/student/presentation/views/welcome_student_view.dart';

abstract class AppRouter {
  static const String kSelectionView = '/selectionView';
  static const String kWelcomeStudent = '/welcomeStudent';
  static const String kWelcomeActivity = '/welcomeActivity';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const IntroView(),
      ),
      GoRoute(
        path: kSelectionView,
        builder: (context, state) => const SelectionView(),
      ),
      GoRoute(
        path: kWelcomeStudent,
        builder: (context, state) => const WelcomeStudentView(),
      ),
      GoRoute(
        path: kWelcomeActivity,
        builder: (context, state) => const WelcomeActivityView(),
      )
    ],
  );
}
