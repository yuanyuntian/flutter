import 'package:flutter/material.dart';
import 'Person.dart';

class PersonInheritedWidget extends InheritedWidget {
  const PersonInheritedWidget(
      {Key? key,
      required this.person,
      required this.updateCallback,
      required this.child})
      : super(key: key, child: child);

  final Widget child;

  final Person person;

  final Function(Person person) updateCallback;

  static PersonInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PersonInheritedWidget>();
  }

  // void updateInfo(Person person) {
  //   updateCallback(person);
  // }

  // void up(Person person) {
  //       updateCallback(person);
  // }

  @override
  bool updateShouldNotify(PersonInheritedWidget oldWidget) {
    return person != oldWidget.person;
  }
}
