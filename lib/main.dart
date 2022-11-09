import 'package:design_patterns/design_patterns/builder/builder_page.dart';
import 'package:design_patterns/design_patterns/singleton/singleton_page.dart';
import 'package:design_patterns/page/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desing Patterns',
      navigatorKey: navigatorKey,
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (_) => const HomePage(),
        SingletonPage.route: (_) => const SingletonPage(),
        BuilderPage.route: (_) => const BuilderPage(),
      },
    );
  }
}
