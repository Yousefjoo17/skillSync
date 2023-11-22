import 'package:go_router/go_router.dart';
import 'package:stud/features/splash/presentaion/views/intro_view.dart';
import 'package:stud/features/splash/presentaion/views/selection_view.dart';
import 'package:stud/features/splash/presentaion/views/welcome_view.dart';

abstract class AppRouter {
  static const String kSelectionView = '/selectionView';
  static const String kWelcomeView = '/welcomeStudent';

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
        path: kWelcomeView,
        builder: (context, state) => const WelcomeView(),
      ),
    ],
  );
}
