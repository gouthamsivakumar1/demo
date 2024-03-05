import 'package:flutter/material.dart';

class NavigatorService {
  // Create a global key to uniquely identify the NavigatorState
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  // Navigate to a named route with optional arguments
  static Future<dynamic> pushNamed(String routeName,
      {dynamic arguments}) async {
    // Use the NavigatorState to push the named route
    return navigatorKey.currentState
        ?.pushNamed(routeName, arguments: arguments);
  }

  // Navigate back in the navigation stack
  static void goBack() {
    // Use the NavigatorState to pop the current route
    navigatorKey.currentState?.pop();
  }

  // Navigate to a named route and remove all routes until a specified route
  static Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {bool routePredicate = false, dynamic arguments}) async {
    // Use the NavigatorState to push the named route and remove until a predicate is met
    navigatorKey.currentState?.pushNamedAndRemoveUntil(
      routeName,
      (route) => routePredicate,
      arguments: arguments,
    );
  }

  // Pop the current route and navigate to a named route with optional arguments
  static Future<dynamic> popAndPushNamed(String routeName,
      {dynamic arguments}) async {
    // Use the NavigatorState to pop the current route and push the new named route
    navigatorKey.currentState?.popAndPushNamed(routeName, arguments: arguments);
  }
}
