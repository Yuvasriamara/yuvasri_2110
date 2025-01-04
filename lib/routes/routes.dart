import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'routes_constants.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RoutesConstants.splashScreen,
    routes: <RouteBase>[
      GoRoute(
        path: RoutesConstants.splashScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: RoutesConstants.onboarding1,
        builder: (BuildContext context, GoRouterState state) {
          return const Onboarding1View();
        },
      ),
      GoRoute(
        path: RoutesConstants.onboarding2,
        builder: (BuildContext context, GoRouterState state) {
          return const Onboarding2View();
        },
      ),
      GoRoute(
        path: RoutesConstants.onboarding3,
        builder: (BuildContext context, GoRouterState state) {
          return const Onboarding3View();
        },
      ),
      GoRoute(
        path: RoutesConstants.loginScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: RoutesConstants.signupScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const SignupScreen();
        },
      ),
      GoRoute(
        path: RoutesConstants.homeScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const HomepageView();
        },
      ),
      GoRoute(
        path: RoutesConstants.restaurantDetailsScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const RestaurantDetailsView();
        },
      ),
      GoRoute(
        path: RoutesConstants.searchScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchScreen();
        },
      ),
      GoRoute(
        path: RoutesConstants.profileScreen,
        builder: (BuildContext context, GoRouterState state) {
          return const ProfileScreen();
        },
      ),
    ],
    errorBuilder: (BuildContext context, GoRouterState state) {
      return const Scaffold(
        body: Center(
          child: Text('Error: Page not found'),
        ),
      );
    },
  );
}
