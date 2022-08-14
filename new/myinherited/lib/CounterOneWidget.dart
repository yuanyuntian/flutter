import 'package:flutter/material.dart';
import 'package:myinherited/CounterInheritedWidget.dart';

class CounterOneWidget extends StatelessWidget {
  const CounterOneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.redAccent,
      alignment: Alignment.center,
      child: Text(
        CounterInheritedWdiget.of(context)!.counter.toString(),
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
