import 'package:flutter/material.dart';
import 'package:helloworld_flutter/demo/post_show.dart';
import '../model/post.dart';
import './post_show.dart';



class ListViewDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.yellow,
      margin: EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Column(
            children: [
              AspectRatio(
                  aspectRatio: 16 / 9,
                  child:
                      Image.network(posts[index].imageUrl, fit: BoxFit.cover)),
              SizedBox(height: 5.0),
              Text(posts[index].title,
                  // ignore: deprecated_member_use
                  style: Theme.of(context).textTheme.subtitle1),
              Text(posts[index].author,
                  style: Theme.of(context).textTheme.subtitle2),
              SizedBox(height: 5.0)
            ],
          ),
          Positioned.fill(
            child:Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor:Colors.white.withOpacity(0.3),
                highlightColor: Colors.white.withOpacity(0.1),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PostShowDemo(post: posts[index])
                    )
                  );
                }
              ),
            )
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: posts.length, itemBuilder: _listItemBuilder);
  }
}
