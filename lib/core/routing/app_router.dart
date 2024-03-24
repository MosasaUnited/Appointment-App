import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kLogin = '/loginScreen';
  static const kSettingsView = '/settings';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const onBoardingScreen(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: kSettingsView,
        builder: (context, state) => const Settings(),
      ),
    ],
  );
}
