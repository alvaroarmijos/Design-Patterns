import 'package:design_patterns/design_patterns/observer/observable/observer.dart';

abstract class Observable {
  void addObserver(Observer observer) {}
  void removeObserver(Observer observer) {}
  void notifyObservers(double newValue) {}
}
