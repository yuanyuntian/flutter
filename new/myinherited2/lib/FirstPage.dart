import 'package:flutter/material.dart';
import 'package:myinherited2/PersonInheritdWidget.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("FirstPage")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            "姓名:${PersonInheritdWidget.of<context>!.person.name}",
            style: const TextStyle(
              fontSize: 20
            ),
          )
        ],
      ),
    );
  }
}
