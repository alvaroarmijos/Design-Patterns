import 'package:design_patterns/design_patterns/factory/message_factory.dart';
import 'package:flutter/material.dart';

class FactoryPage extends StatelessWidget {
  static const route = 'factory-page';
  const FactoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factory'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () =>
                  MessageFactory.getDialog(context, MessageType.success),
              child: const Text('Show success dialog')),
          const SizedBox(
            height: 8,
            width: double.infinity,
          ),
          ElevatedButton(
              onPressed: () =>
                  MessageFactory.getDialog(context, MessageType.error),
              child: const Text('Show error dialog')),
        ],
      ),
    );
  }
}
