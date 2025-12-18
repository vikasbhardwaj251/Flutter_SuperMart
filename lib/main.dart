import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:super_mart/utils/AppRoutes.dart';
import 'package:super_mart/l10n/app_localizations.dart';

void main() {
  runApp(const SuperMart());
}

class SuperMart extends StatelessWidget {
  const SuperMart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SuperMart",
      debugShowCheckedModeBanner: true,
      debugShowMaterialGrid: false,

      // - - localization setup
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en'), Locale('hi'), Locale('fr')],

      // - - theme dena
      theme: ThemeData(
        primaryColor: Colors.blue,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),

      // - - app navigation
      initialRoute: AppRoutes.splash,
      routes: AppRoutes.routes,
    );
  }
}
