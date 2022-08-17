import 'package:flutter/material.dart';
import 'package:myinherited2/Person.dart';
import 'PersonInheritdWidget.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SecondPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("姓名:${PersonInheritedWidget.of(context)!.person.name}",
                style: const TextStyle(fontSize: 20)),
            Text("年龄:${PersonInheritedWidget.of(context)!.person.age}",
                style: const TextStyle(fontSize: 20))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          PersonInheritedWidget.of(context)
              ?.updateCallback(Person(name: "李四", age: 25));
        },
        child: const Icon(Icons.change_circle_outlined),
      ),
    );
  }
}
