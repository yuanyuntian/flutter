import 'package:flutter/material.dart';


class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(onPressed: null, child: Text('Home')),
          FlatButton(onPressed: (){
            Navigator.pushNamed(context, '/about');
          }, child: Text('About'))
        ],
      ),
    ));
  }
}


class PageDemo extends StatelessWidget {
  
  final String title;

  PageDemo({this.title});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        title:Text(title),
        elevation:0.0
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        }
      ),
    );
  }
}