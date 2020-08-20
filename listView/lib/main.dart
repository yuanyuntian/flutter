
import 'package:flutter/material.dart';
import './demo/listview_demo.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigationBar_demo.dart';
import './demo/basic_demo.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement buildik
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      )
    );
  }
  
}

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3, 
      child: Scaffold (
       appBar: AppBar(
         title: Text("你好"),
         actions: [
          IconButton(icon: Icon(Icons.search), tooltip: 'search',onPressed: ()=>debugPrint('search button is pressed')) 
         ],
         elevation: 0.0, 
         bottom: TabBar(
           unselectedLabelColor: Colors.black38,
           indicatorColor: Colors.black54,
           indicatorSize: TabBarIndicatorSize.label,
           indicatorWeight: 1.0,
           tabs: [
             Tab(icon:Icon(Icons.play_arrow)),
             Tab(icon:Icon(Icons.settings)),
             Tab(icon:Icon(Icons.home))
           ]
         ),
        ),
      body: TabBarView(
        children:[
          ListViewDemo(),
          BasicDemo(),
          Icon(Icons.local_phone,size: 128.0,color: Colors.black12)
        ]
      ),
      drawer: DrawerDemo(),
      bottomNavigationBar: BottomNavigationBarDemo(),
      backgroundColor: Colors.grey[100]
      )
    );
  }
}

