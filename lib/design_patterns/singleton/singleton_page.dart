import 'package:design_patterns/design_patterns/singleton/user_singleton.dart';
import 'package:flutter/material.dart';

class SingletonPage extends StatefulWidget {
  static const route = 'singleton-page';
  const SingletonPage({super.key});

  @override
  State<SingletonPage> createState() => _SingletonPageState();
}

class _SingletonPageState extends State<SingletonPage> {
  final s1 = UserSingleton();
  final s2 = UserSingleton();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Singleton'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                'S1',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'S2',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                s1.userName,
              ),
              Text(
                s2.userName,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  s1.updateUserName('Eduardo');
                });
              },
              child: const Text('Update s1 username')),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  s2.updateUserName('Alvaro');
                });
              },
              child: const Text('Update s2 username'))
        ],
      ),
    );
  }
}
