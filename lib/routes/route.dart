import 'package:flutter_test_go_router/login_state_info.dart';
import 'package:flutter_test_go_router/screens/home_next_page.dart';
import 'package:flutter_test_go_router/screens/home_page.dart';
import 'package:flutter_test_go_router/screens/login_page.dart';
import 'package:flutter_test_go_router/screens/signup_page.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String login = '/login';
  static const String home = '/home';
  static const String homeNext = 'home-next';
  static const String signup = '/signup';
}

GoRouter routerGenerator(LoginStateInfo loginStatusInfo) {
  return GoRouter(
      initialLocation: Routes.login,
      refreshListenable: loginStatusInfo,
      redirect: (state) {
        final isOnLogin = state.location == Routes.login;
        final isOnSignUp = state.location == Routes.signup;
        final isLoggedIn = loginStatusInfo.isLoggIn;

        if (!isOnLogin && !isOnSignUp && !isLoggedIn) return Routes.login;
        if ((isOnLogin || isOnSignUp) && isLoggedIn) return Routes.home;
        return null;
      },
      routes: [
        GoRoute(
            path: Routes.login,
            builder: (context, status) => const LoginPage()),
        GoRoute(
            path: Routes.home,
            builder: (context, status) => const HomePage(),
            routes: [
              GoRoute(
                  path: Routes.homeNext,
                  builder: (context, status) => const HomeNextPage()),
            ]),
        GoRoute(
            path: Routes.signup,
            builder: (context, status) => const SignUpPage()),
      ]);
}
