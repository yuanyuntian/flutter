import 'dart:ffi';

import 'package:flutter/material.dart';
import './navigator_demo.dart';

class MaterialComponentDemo extends StatelessWidget {
  const MaterialComponentDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('MaterialComponentDemo'),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          ListItem (
            title: 'FloatingActionButton',
            page: FloatingActionButtonDemo()
          )
        ],
      ),
    );
  }
}

class FloatingActionButtonDemo extends StatelessWidget {

  final Widget _floatingActionButton = FloatingActionButton (
    onPressed: () {},
    child: Icon(Icons.add),
    elevation: 0.0,
    backgroundColor: Colors.black12,
    shape: BeveledRectangleBorder (
      borderRadius: BorderRadius.circular(30.0)
    ),
  );

  final Widget _floatingActionButtonExtend  = FloatingActionButton.extended(
    onPressed: () {},
     label: Text('add'),
     icon: Icon(Icons.add),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title:Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
    );
  }
}

class ListItem extends StatelessWidget {

  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile (
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => PageDemo(title: title)),
        );
      },
    );
  }
}