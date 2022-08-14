import 'package:flutter/material.dart';

class CounterInheritedWdiget extends InheritedWidget {
  const CounterInheritedWdiget(
      {Key? key, required this.counter, required this.child})
      : super(key: key, child: child);

  @override
  // ignore: overridden_fields
  final Widget child;

  final int counter;

  static CounterInheritedWdiget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterInheritedWdiget>();
  }

  @override
  bool updateShouldNotify(CounterInheritedWdiget oldWidget) {
    return counter != oldWidget.counter;
  }
}
