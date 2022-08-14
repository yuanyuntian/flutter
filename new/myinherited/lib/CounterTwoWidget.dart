import 'package:flutter/material.dart';
import 'package:myinherited/CounterInheritedWidget.dart';

class CounterTwoWidget extends StatefulWidget {
  const CounterTwoWidget({Key? key}) : super(key: key);

  @override
  State<CounterTwoWidget> createState() => _CounterTwoWidgetState();
}

class _CounterTwoWidgetState extends State<CounterTwoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        CounterInheritedWdiget.of(context)!.counter.toString(),
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
