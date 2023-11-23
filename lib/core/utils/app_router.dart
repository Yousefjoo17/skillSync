import 'package:go_router/go_router.dart';
import 'package:stud/features/activity/presentation/views/activity_survey_view.dart.dart';
import 'package:stud/features/splash/presentaion/views/intro_view.dart';
import 'package:stud/features/splash/presentaion/views/login_view.dart';
import 'package:stud/features/splash/presentaion/views/register_view.dart';
import 'package:stud/features/splash/presentaion/views/selection_view.dart';
import 'package:stud/features/splash/presentaion/views/welcome_view.dart';
import 'package:stud/features/student/presentation/views/student_servey_view.dart';

abstract class AppRouter {
  static const String kSelectionView = '/selection';
  static const String kWelcomeView = '/welcome';
  static const String kRegister = '/register';
  static const String kLogin = '/login';
  static const String kStudentSurvey = '/studentSurvey';
  static const String kActivitySurvey = '/ActivitySurvey';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const StartView(),
      ),
      GoRoute(
        path: kSelectionView,
        builder: (context, state) => const SelectionView(),
      ),
      GoRoute(
        path: kWelcomeView,
        builder: (context, state) => const WelcomeView(),
      ),
      GoRoute(
        path: kRegister,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kStudentSurvey,
        builder: (context, state) => const StudentSurveyView(),
      ),
      GoRoute(
        path: kActivitySurvey,
        builder: (context, state) => const ActivitySurveyView(),
      ),
    ],
  );
}
