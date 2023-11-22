import 'package:go_router/go_router.dart';
import 'package:stud/features/splash/presentaion/views/intro_view.dart';
import 'package:stud/features/splash/presentaion/views/login_view.dart';
import 'package:stud/features/splash/presentaion/views/register_view.dart';
import 'package:stud/features/splash/presentaion/views/selection_view.dart';
import 'package:stud/features/splash/presentaion/views/welcome_view.dart';
import 'package:stud/features/student/presentation/views/student_q1_view.dart';
import 'package:stud/features/student/presentation/views/student_q2_view.dart';
import 'package:stud/features/student/presentation/views/student_q3_view.dart';

abstract class AppRouter {
  static const String kSelectionView = '/selection';
  static const String kWelcomeView = '/welcome';
  static const String kRegister = '/register';
  static const String kLogin = '/login';
  static const String kStudentq1 = '/studentQ1';
  static const String kStudentq2 = '/studentQ2';
  static const String kStudentq3 = '/studentQ3';

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
        path: kStudentq1,
        builder: (context, state) => const StudentQ1View(),
      ),
       GoRoute(
        path: kStudentq2,
        builder: (context, state) => const StudentQ2view(),
      ), GoRoute(
        path: kStudentq3,
        builder: (context, state) => const StudentQ3view(),
      ),
    ],
  );
}
