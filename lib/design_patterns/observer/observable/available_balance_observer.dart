import 'package:design_patterns/design_patterns/observer/observable/observable.dart';
import 'package:design_patterns/design_patterns/observer/observable/observer.dart';

class AvailableBalanceObservable implements Observable {
  final List<Observer> _amountObserverList = [];
  double _amount = 0.0;

  void changeAmount(double newValue) {
    _amount = newValue;
    notifyObservers(_amount);
  }

  @override
  void addObserver(Observer observer) {
    _amountObserverList.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    _amountObserverList.remove(observer);
  }

  @override
  void notifyObservers(double newValue) {
    for (var observer in _amountObserverList) {
      observer.notifyChange(newValue);
    }
  }
}
