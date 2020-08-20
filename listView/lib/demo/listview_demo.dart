

import 'package:flutter/material.dart';
import '../model/post.dart';

class ListViewDemo extends StatelessWidget{

    Widget _listItemBuilder(BuildContext context, int index){
    return Container(
      color: Colors.yellow,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.network(posts[index].imageUrl),
        //  SizedBox(
        //   width: 100.0,
        //   height: 0.0,
        //   child:  Container(
        //     width: 400.0,
        //     height: 400.0,
        //     color: Color(0xffff0000),
        //   ),
        // ),
          SizedBox(height:5.0),
          Text(
            posts[index].title,
            // ignore: deprecated_member_use
            style: Theme.of(context).textTheme.subtitle1
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subtitle2
          ),
          SizedBox(height:5.0)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
          itemCount: posts.length,
          itemBuilder: _listItemBuilder
    );
  }
}
