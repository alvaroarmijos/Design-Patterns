import 'package:design_patterns/design_patterns/builder/widgets/useful_widget.dart';
import 'package:flutter/material.dart';

class BuilderPage extends StatelessWidget {
  static const route = 'builder-page';
  const BuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    final builder1 = UsefulWidgetBuilder()..label = 'Builder 1';

    final builder2 = UsefulWidgetBuilder()
      ..label = 'Builder 2'
      ..content = 'This is a Builder'
      ..borderColor = Colors.blue;

    final builder3 = UsefulWidgetBuilder()
      ..label = 'Builder 3'
      ..color = Colors.blue
      ..textColor = Colors.white;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Builder'),
      ),
      body: ListView(
        children: [
          builder1.build(),
          builder2.build(),
          builder3.build(),
        ],
      ),
    );
  }
}
