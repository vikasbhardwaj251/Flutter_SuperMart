import 'package:flutter/material.dart';
import 'package:super_mart/screens/HomeScreen.dart';
import 'package:super_mart/screens/SplashScreen.dart';

class AppRoutes {
  // - - Routes name
  static const String splash = "/";
  static const String onboarding = "/onboarding";
  static const String login = "/login";
  static const String home = "/home";

  // - - All Routes Mapping
  static Map<String, WidgetBuilder> routes = {
    splash: (context) => SplashScreen(),
    home: (context) => HomeScreen(),
  };
}
