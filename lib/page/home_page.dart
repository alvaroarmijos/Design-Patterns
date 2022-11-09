import 'package:design_patterns/design_patterns/builder/builder_page.dart';
import 'package:design_patterns/design_patterns/singleton/singleton_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const route = 'home-page';

  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Desing Patterns'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: const Text('Singleton'),
              trailing: const Icon(Icons.navigate_next_sharp),
              onTap: () => Navigator.pushNamed(context, SingletonPage.route),
            ),
            ListTile(
              title: const Text('Builder'),
              trailing: const Icon(Icons.navigate_next_sharp),
              onTap: () => Navigator.pushNamed(context, BuilderPage.route),
            ),
          ],
        ));
  }
}
