import 'package:flutter/material.dart';
import 'package:myinherited2/PersonInheritdWidget.dart';

import 'Person.dart';

class PersonStateWdiget extends StatefulWidget {
  const PersonStateWdiget({Key? key, required this.person, required this.child})
      : super(key: key);

  final Person person;
  final Widget child;
  @override
  State<PersonStateWdiget> createState() => _PersonStateWdigetState();
}

class _PersonStateWdigetState extends State<PersonStateWdiget> {
  late Person _person;

  @override
  void initState() {
    _person = widget.person;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersonInheritedWidget(
        person: _person, updateCallback: _updateCallback, child: widget.child);
  }

  void _updateCallback(Person person) {
    if (!mounted) {
      return;
    }
    setState(() {
      _person = person;
    });
  }
}
