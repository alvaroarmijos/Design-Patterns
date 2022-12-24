import 'package:flutter/material.dart';

enum MessageType {
  error,
  success,
}

class MessageFactory {
  static Future<void> getDialog(BuildContext context, MessageType messageType) {
    return showDialog(
        context: context,
        builder: ((context) {
          switch (messageType) {
            case MessageType.error:
              return AlertDialog(
                title: const Text('Error'),
                content: const Text('There is an error loading the content.'),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Ok'))
                ],
              );
            case MessageType.success:
              return AlertDialog(
                title: const Text('Success'),
                content: const Text('The content was loaded successfully.'),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Ok'))
                ],
              );
            default:
              return AlertDialog(
                title: const Text('Undefined'),
                content: const Text('Undefined type.'),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Ok'))
                ],
              );
          }
        }));
  }
}
