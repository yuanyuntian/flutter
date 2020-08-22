import 'package:flutter/material.dart';
import '../model/post.dart';



class PostShowDemo extends StatelessWidget {

  final Post post;

  PostShowDemo({
    @required this.post
  });


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        title:Text('${post.title}'),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Image.network(
            post.imageUrl,
            fit:BoxFit.cover
          ),
          Container(
            padding: EdgeInsets.all(32.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text('${post.imageUrl}', style: TextStyle(
                  fontSize: 30,
                  color: Colors.grey
                ))
              ]
            ),
          )
        ],
      ),
    );
  }
}