import 'package:flutter/material.dart';
import 'package:myinherited2/FirstPage.dart';
import 'package:myinherited2/Person.dart';
import 'package:myinherited2/PersonStateWdiget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return PersonStateWdiget(
        person: Person(name: '张三', age: 19),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.orange),
          home: const FirstPage(),
        ));
  }
}
