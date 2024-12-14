import 'package:go_router/go_router.dart';
import 'package:submission_beginner_flutter/pages/home.dart';
import 'package:submission_beginner_flutter/pages/login.dart';
import 'package:submission_beginner_flutter/pages/onboarding.dart';
import 'package:submission_beginner_flutter/pages/register.dart';
import 'package:submission_beginner_flutter/pages/splash.dart';

class AppRouter {
  static final GoRouter router = GoRouter(initialLocation: '/splash', routes: [
    GoRoute(path: '/splash', builder: (context, state) => const Splash()),
    GoRoute(
        path: '/onboarding', builder: (context, state) => const OnBoarding()),
    GoRoute(path: '/register', builder: (context, state) => const Register()),
    GoRoute(path: '/login', builder: (context, state) => const Login()),
    GoRoute(
        path: '/home',
        builder: (context, state) {
          final parameter = state.extra as String?;
          return Home(email: parameter,);
        }),
  ]);
}
