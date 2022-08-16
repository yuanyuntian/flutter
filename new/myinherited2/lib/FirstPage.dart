import 'package:flutter/material.dart';
import 'package:myinherited2/PersonInheritdWidget.dart';
import 'package:myinherited2/SecondPage.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("姓名:${PersonInheritedWidget.of(context)!.person.name}",
                style: const TextStyle(fontSize: 20)),
            Text(
              "年龄:${PersonInheritedWidget.of(context)!.person.age}",
              style: const TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: const Icon(Icons.chevron_right_outlined),
      ),
    );
  }
}
