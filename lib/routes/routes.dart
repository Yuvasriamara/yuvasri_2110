import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yuvasri_2110/features/onboarding/view/onboarding1.dart';
import 'package:yuvasri_2110/features/onboarding/view/onboarding2.dart';
import 'package:yuvasri_2110/features/onboarding/view/onboarding3.dart';
import 'routes_constants.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RoutesConstants.onboarding1,
    routes: <RouteBase>[
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
      // Define a route for the login screen
      //GoRoute(
        //path: RoutesConstants.login,
        //builder: (BuildContext context, GoRouterState state) {
         // return const LoginScreen();  // Define your LoginScreen widget
        //},
      //),
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
