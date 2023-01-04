import 'package:design_patterns/design_patterns/observer/observable/available_balance_observer.dart';
import 'package:design_patterns/design_patterns/observer/observable/observer.dart';
import 'package:flutter/material.dart';

class ObserverPage extends StatefulWidget {
  static const route = 'observer-page';
  const ObserverPage({super.key});

  @override
  State<ObserverPage> createState() => _ObserverPageState();
}

class _ObserverPageState extends State<ObserverPage> implements Observer {
  final AvailableBalanceObservable _availableBalanceObservable =
      AvailableBalanceObservable();

  late double availableBalance;

  @override
  void initState() {
    availableBalance = 0;
    _availableBalanceObservable.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    _availableBalanceObservable.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Observer'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Available Balance:',
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(
            height: 24,
            width: double.infinity,
          ),
          Text(
            availableBalance.toStringAsFixed(2),
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(
            height: 48,
          ),
          ElevatedButton(
            onPressed: () =>
                _availableBalanceObservable.changeAmount(availableBalance + 1),
            child: const Text('Update'),
          )
        ],
      ),
    );
  }

  @override
  void notifyChange(double newValue) {
    setState(() {
      availableBalance = newValue;
    });
  }
}
