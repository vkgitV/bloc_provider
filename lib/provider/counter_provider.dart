import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void increment() {
    _counter++;
    notifyListeners(); // Notify all listeners to rebuild UI
  }

  void decrement() {
    _counter--;
    notifyListeners(); // Notify all listeners to rebuild UI
  }
}
