import 'package:go_router/go_router.dart';

import '../../features/login/ui/widgets/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/splash/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kLogin = '/loginScreen';
  static const kSettingsView = '/settings';
  static const kOnboardingView = '/onBoarding';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnboardingView,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => const LoginScreen(),
      ),
      // GoRoute(
      //   path: kSettingsView,
      //   builder: (context, state) => const Settings(),
      // ),
    ],
  );
}
